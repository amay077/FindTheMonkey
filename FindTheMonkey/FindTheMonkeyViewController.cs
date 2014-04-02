using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using MonoTouch.CoreBluetooth;
using MonoTouch.CoreLocation;
using MonoTouch.CoreFoundation;
using MonoTouch.AVFoundation;
using MonoTouch.MultipeerConnectivity;
using System.Diagnostics;
using System.Reactive.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace FindTheMonkey
{
    public partial class FindTheMonkeyViewController : UIViewController
    {
        static readonly string uuid = "E4C8A4FC-F68B-470D-959F-29382AF72CE7";
        static readonly string monkeyId = "Monkey";

        static bool UserInterfaceIdiomIsPhone
        {
            get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
        }

        CBPeripheralManager peripheralMgr;
        BTPeripheralDelegate peripheralDelegate;
        CLLocationManager man;
        float volume = 0.5f;
        float pitch = 1.0f;

        public FindTheMonkeyViewController() : base(UserInterfaceIdiomIsPhone ? "FindTheMonkeyViewController_iPhone" : "FindTheMonkeyViewController_iPad", null)
        {
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            if (!UserInterfaceIdiomIsPhone)
            {
                openMultipeerBrowser.TouchUpInside += (sender, e) =>
                {
                    StartMultipeerBrowser();
                };
            } else
            {
                StartMultipeerAdvertiser();
            }

            var monkeyUUID = new NSUuid(uuid);
            var beaconRegion = new CLBeaconRegion(monkeyUUID, monkeyId);

            beaconRegion.NotifyEntryStateOnDisplay = true;
            beaconRegion.NotifyOnEntry = true;
            beaconRegion.NotifyOnExit = true;

            if (!UserInterfaceIdiomIsPhone)
            {

                //power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
                var power = new NSNumber(-59);
                NSMutableDictionary peripheralData = beaconRegion.GetPeripheralData(power);
                peripheralDelegate = new BTPeripheralDelegate();
                peripheralMgr = new CBPeripheralManager(peripheralDelegate, DispatchQueue.DefaultGlobalQueue);

                peripheralMgr.StartAdvertising(peripheralData);

            } else
            {

                InitPitchAndVolume();

                man = new CLLocationManager();
                
                man.StartMonitoringAsObservable(beaconRegion)
                .Do(x => Debug.WriteLine("Did StartMonitoringAsObservable:{0}, NotifyOnEntry:{1}, NotifyOnEntry:{2}", 
                    x.Identifier, x.NotifyOnEntry, x.NotifyOnExit))
                .SelectMany(r =>
                    man.RegionEnteredAsObservable()
                    .Do(x => monkeyStatusLabel.Text = "RegionEntered")
                    .Amb(man.RequestStateAsObservable(r)
                        .Where(e => e.State == CLRegionState.Inside)
                        .Select(x => x.Region as CLBeaconRegion)
                        .Do(x => monkeyStatusLabel.Text = "ReceivedState")))
                    .SelectMany(man.StartRangingBeaconsAsObservable)
                        .Where(x => x.Beacons.Length > 0)
                        .Select(x => x.Beacons [0])
                        .DistinctUntilChanged(x => x.Proximity)
                        .Select(x =>
                        {
                            switch (x.Proximity)
                            {
                                case CLProximity.Immediate:
                                    return new { x.Proximity, Message = "You found the monkey!", Color = UIColor.Green };
                                case CLProximity.Near:
                                    return new { x.Proximity, Message = "You're getting warmer", Color = UIColor.Yellow };
                                case CLProximity.Far:
                                    return new { x.Proximity, Message = "You're freezing cold", Color = UIColor.Blue };
                                case CLProximity.Unknown:
                                default:
                                    return new { x.Proximity, Message = "I'm not sure how close you are to the monkey", Color = UIColor.Gray };
                            }
                        })
                .Subscribe(x =>
                {
                    monkeyStatusLabel.Text = x.Message;
                    View.BackgroundColor = x.Color;
                    Speak(x.Message);
                        
                    // demo send message using multipeer connectivity
                    if (x.Proximity == CLProximity.Immediate)
                    {
                        SendMessage();
                    }
                });
            }
        }

        void Speak(string text)
        {
            var speechSynthesizer = new AVSpeechSynthesizer();

//			var voices = AVSpeechSynthesisVoice.GetSpeechVoices ();

            var speechUtterance = new AVSpeechUtterance(text)
            {
                Rate = AVSpeechUtterance.MaximumSpeechRate / 4,
                Voice = AVSpeechSynthesisVoice.FromLanguage("en-AU"),
                Volume = volume,
                PitchMultiplier = pitch
            };

            speechSynthesizer.SpeakUtterance(speechUtterance);
        }

        void InitPitchAndVolume()
        {
            volumeSlider.MinValue = 0;
            volumeSlider.MaxValue = 1.0f;
            volumeSlider.SetValue(volume, false);

            pitchSlider.MinValue = 0.5f;
            pitchSlider.MaxValue = 2.0f;
            pitchSlider.SetValue(pitch, false);

            volumeSlider.ValueChanged += (sender, e) =>
            {
                volume = volumeSlider.Value;
            };

            pitchSlider.ValueChanged += (sender, e) =>
            {
                pitch = volumeSlider.Value;
            };
        }

        #region Multipeer Connectivity Demo

        MCSession session;
        MCPeerID peer;
        MCBrowserViewController browser;
        MCAdvertiserAssistant assistant;
        MySessionDelegate sessionDelegate = new MySessionDelegate();
        MyBrowserDelegate browserDelegate = new MyBrowserDelegate();
        NSDictionary dict = new NSDictionary();
        static readonly string serviceType = "FindTheMonkey";

        void StartMultipeerAdvertiser()
        {
            peer = new MCPeerID("Player1");
            session = new MCSession(peer);
            session.Delegate = sessionDelegate;
            assistant = new MCAdvertiserAssistant(serviceType, dict, session); 
            assistant.Start();
        }

        void StartMultipeerBrowser()
        {
            peer = new MCPeerID("Monkey");
            session = new MCSession(peer);
            session.Delegate = sessionDelegate;
            browser = new MCBrowserViewController(serviceType, session);
            browser.Delegate = browserDelegate;
            browser.ModalPresentationStyle = UIModalPresentationStyle.FormSheet;
            this.PresentViewController(browser, true, null);	
        }

        void SendMessage()
        {
            var message = NSData.FromString(
                     String.Format("{0} found the monkey", peer.DisplayName));
            NSError error;
            session.SendData(message, session.ConnectedPeers, 
                MCSessionSendDataMode.Reliable, out error);
        }

        class MySessionDelegate : MCSessionDelegate
        {
            public override void DidChangeState(MCSession session, MCPeerID peerID, MCSessionState state)
            {
                switch (state)
                {
                    case MCSessionState.Connected:
                        Console.WriteLine("Connected: {0}", peerID.DisplayName);
                        break;
                    case MCSessionState.Connecting:
                        Console.WriteLine("Connecting: {0}", peerID.DisplayName);
                        break;
                    case MCSessionState.NotConnected:
                        Console.WriteLine("Not Connected: {0}", peerID.DisplayName);
                        break;
                }
            }

            public override void DidReceiveData(MCSession session, NSData data, MCPeerID peerID)
            {
                InvokeOnMainThread(() =>
                {
                    var alert = new UIAlertView("", data.ToString(), null, "OK");
                    alert.Show();
                });
            }

            public override void DidStartReceivingResource(MCSession session, string resourceName, MCPeerID fromPeer, NSProgress progress)
            {
            }

            public override void DidFinishReceivingResource(MCSession session, string resourceName, MCPeerID formPeer, NSUrl localUrl, NSError error)
            {
                error = null;
            }

            public override void DidReceiveStream(MCSession session, NSInputStream stream, string streamName, MCPeerID peerID)
            {
            }
        }

        class MyBrowserDelegate : MCBrowserViewControllerDelegate
        {
            public override void DidFinish(MCBrowserViewController browserViewController)
            {
                InvokeOnMainThread(() =>
                {
                    browserViewController.DismissViewController(true, null);
                });
            }

            public override void WasCancelled(MCBrowserViewController browserViewController)
            {
                InvokeOnMainThread(() =>
                {
                    browserViewController.DismissViewController(true, null);
                });
            }
        }

        #endregion

        class BTPeripheralDelegate : CBPeripheralManagerDelegate
        {
            public override void StateUpdated(CBPeripheralManager peripheral)
            {
                if (peripheral.State == CBPeripheralManagerState.PoweredOn)
                {
                    Console.WriteLine("powered on");
                }
            }
        }
    }
}

