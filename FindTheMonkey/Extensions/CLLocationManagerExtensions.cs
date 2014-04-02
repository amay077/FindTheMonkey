using System;
using MonoTouch.CoreLocation;
using System.Reactive.Linq;
using System.Collections.Generic;
using System.Threading;

namespace FindTheMonkey
{
    public static class CLLocationManagerExtensions
    {
        // リージョン監視を開始して、開始通知を IObservable で得る拡張メソッド
        public static IObservable<CLBeaconRegion> StartMonitoringAsObservable(
            this CLLocationManager man, CLBeaconRegion beaconRegion)
        {
            return Observable.Defer(() =>
            {
                var o = Observable.FromEventPattern<CLRegionEventArgs>(
                            h => man.DidStartMonitoringForRegion += h, 
                            h => man.DidStartMonitoringForRegion -= h)
                .Select(x => x.EventArgs.Region as CLBeaconRegion);
                
                man.StartMonitoring(beaconRegion);                    
                return o;
            });
        }
        
        // リージョンへの進入を IObservable で得る拡張メソッド
        public static IObservable<CLBeaconRegion> RegionEnteredAsObservable(
            this CLLocationManager man)
        {
            return Observable.FromEventPattern<CLRegionEventArgs>(
                h => man.RegionEntered += h, h => man.RegionEntered -= h)
                    .Select(e => e.EventArgs.Region as CLBeaconRegion);
        }
        
        // リージョンの状態を要求して、結果を IObservable で得る拡張メソッド
        public static IObservable<CLRegionStateDeterminedEventArgs> RequestStateAsObservable(
            this CLLocationManager man, CLBeaconRegion beaconRegion)
        {
            return Observable.Defer<CLRegionStateDeterminedEventArgs>(() => 
            {
                var o = Observable.FromEventPattern<CLRegionStateDeterminedEventArgs>(
                h => man.DidDetermineState += h, h => man.DidDetermineState -= h)
                    .Select(e => e.EventArgs);
                
                man.RequestState(beaconRegion);
                return o;
            });
        }
        
        // レンジングを開始してビーコン信号を IObservable で得る拡張メソッド
        public static IObservable<CLRegionBeaconsRangedEventArgs> StartRangingBeaconsAsObservable(
            this CLLocationManager man, CLBeaconRegion beaconRegion)
        {
            return Observable.Defer(() => 
            {
                var o = Observable.FromEventPattern<CLRegionBeaconsRangedEventArgs>(
                h => man.DidRangeBeacons += h, h => man.DidRangeBeacons -= h)
                    .Select(e => e.EventArgs);
                
                man.StartRangingBeacons(beaconRegion);
                return o;
            });
        }
    }
}

