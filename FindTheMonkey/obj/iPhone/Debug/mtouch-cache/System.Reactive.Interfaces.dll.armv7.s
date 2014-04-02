.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,17,1,18,1,64,10,0,0
	.byte 3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0,11,11,62,11,3,8,0
	.byte 0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73,19,56,10,0,0,7,22
	.byte 0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13,0,0,10,57,1,3,8
	.byte 0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13,15,0,73,19,0,0,14
	.byte 16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0,0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 4,1
	.asciz "Mono AOT Compiler 3.2.7 (monotouch-7.0.7-hotfix-branch/2d13830 Mon Mar 10 17:51:56 EDT 2014)"
	.asciz "System.Reactive.Interfaces.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,124,14
	.align 2
Lcie0_end:
.text
	.align 3
methods:
	.space 16
.text
	.align 2
	.no_dead_strip _System_Reactive_NamespaceDoc__ctor
_System_Reactive_NamespaceDoc__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_System_Reactive_Interfaces_got - . + 4
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip _System_Reactive_Concurrency_NamespaceDoc__ctor
_System_Reactive_Concurrency_NamespaceDoc__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_System_Reactive_Interfaces_got - . + 8
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip _System_Reactive_Disposables_NamespaceDoc__ctor
_System_Reactive_Disposables_NamespaceDoc__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_System_Reactive_Interfaces_got - . + 12
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 2
	.no_dead_strip _System_Reactive_Linq_NamespaceDoc__ctor
_System_Reactive_Linq_NamespaceDoc__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_System_Reactive_Interfaces_got - . + 16
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_3:
.text
	.align 2
	.no_dead_strip _System_Reactive_Subjects_NamespaceDoc__ctor
_System_Reactive_Subjects_NamespaceDoc__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_System_Reactive_Interfaces_got - . + 20
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_4:
.text
	.align 3
methods_end:

	.long 0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
	bl _System_Reactive_NamespaceDoc__ctor
	bl _System_Reactive_Concurrency_NamespaceDoc__ctor
	bl _System_Reactive_Disposables_NamespaceDoc__ctor
	bl _System_Reactive_Linq_NamespaceDoc__ctor
	bl _System_Reactive_Subjects_NamespaceDoc__ctor
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
	bl method_addresses
method_addresses_end:
.section __TEXT, __const
	.align 3
code_offsets:

	.long 0

.text
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.long 51,10,6,2
	.short 0, 14, 24, 34, 44, 54
	.byte 1,3,3,3,3,255,255,255,255,243,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section __TEXT, __const
	.align 3
extra_method_table:

	.long 11,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.long 19,32,0,33,0,34,0,35
	.long 0,36,0,37,0,38,0,39
	.long 0,40,0,41,0,42,0,43
	.long 0,44,0,45,0,46,0,47
	.long 0,48,0,49,0,50,0
.section __TEXT, __const
	.align 3
class_name_table:

	.short 37, 7, 0, 10, 0, 0, 0, 0
	.short 0, 12, 41, 6, 0, 23, 0, 24
	.short 0, 0, 0, 19, 0, 0, 0, 11
	.short 0, 4, 38, 0, 0, 0, 0, 0
	.short 0, 21, 0, 0, 0, 0, 0, 8
	.short 42, 0, 0, 16, 0, 2, 0, 0
	.short 0, 0, 0, 13, 0, 15, 0, 0
	.short 0, 0, 0, 0, 0, 3, 0, 1
	.short 37, 14, 40, 0, 0, 0, 0, 0
	.short 0, 0, 0, 5, 39, 9, 0, 17
	.short 0, 18, 0, 20, 0, 22, 0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.long 9,10,1,2
	.short 0
	.byte 16,2,1,1,1,1,1,1,1
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.long 51,10,6,2
	.short 0, 14, 24, 34, 44, 54
	.byte 26,46,46,46,46,255,255,255,255,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 18,12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
.section __TEXT, __const
	.align 3
class_info_offsets:

	.long 24,10,3,2
	.short 0, 11, 22
	.byte 129,0,7,23,23,23,23,23,7,7,5,129,148,7,7,7,5,5,5,5,5,5,129,206,7,5,5

.text
	.align 4
plt:
_mono_aot_System_Reactive_Interfaces_plt:
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.long 2
	.asciz "System.Reactive.Interfaces"
	.asciz "79EDEDAC-83D0-4126-8A03-F90DA83DB0F5"
	.asciz ""
	.asciz "31bf3856ad364e35"
	.align 3

	.long 1,0,0,0,0
	.asciz "mscorlib"
	.asciz "9627E3FA-7529-4FE8-8CA2-665E2FF84CAD"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
.data
	.align 3
_mono_aot_System_Reactive_Interfaces_got:
	.space 40
got_end:
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "79EDEDAC-83D0-4126-8A03-F90DA83DB0F5"
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "System.Reactive.Interfaces"
.data
	.align 3
_mono_aot_file_info:

	.long 97,0
	.align 2
	.long _mono_aot_System_Reactive_Interfaces_got
	.align 2
	.long methods
	.align 2
	.long 0
	.align 2
	.long blob
	.align 2
	.long class_name_table
	.align 2
	.long class_info_offsets
	.align 2
	.long method_info_offsets
	.align 2
	.long ex_info_offsets
	.align 2
	.long code_offsets
	.align 2
	.long method_addresses
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long extra_method_table
	.align 2
	.long got_info_offsets
	.align 2
	.long methods_end
	.align 2
	.long unwind_info
	.align 2
	.long mem_end
	.align 2
	.long image_table
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end

	.long 9,40,1,51,14,387000831,0,484
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,128,4,4,14
	.long 0,0,0,0,0
	.globl _mono_aot_module_System_Reactive_Interfaces_info
	.align 2
_mono_aot_module_System_Reactive_Interfaces_info:
	.align 2
	.long _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,1,4,0,1,5,0,1,6,0,1,7,0,1,8,12,0,39,42,47,40,40,40,40,40,10,0,4,255,255,255
	.byte 255,255,52,0,0,1,24,0,1,2,6,20,0,0,192,255,255,249,16,0,0,18,128,128,68,128,140,208,0,0,13,8
	.byte 0,3,0,68,6,28,1,32,10,0,4,255,255,255,255,255,52,0,0,1,24,0,1,2,6,20,0,0,192,255,255,249
	.byte 16,0,0,18,128,128,68,128,140,208,0,0,13,8,0,3,0,68,6,28,1,32,10,0,4,255,255,255,255,255,52,0
	.byte 0,1,24,0,1,2,6,20,0,0,192,255,255,249,16,0,0,18,128,128,68,128,140,208,0,0,13,8,0,3,0,68
	.byte 6,28,1,32,10,0,4,255,255,255,255,255,52,0,0,1,24,0,1,2,6,20,0,0,192,255,255,249,16,0,0,18
	.byte 128,128,68,128,140,208,0,0,13,8,0,3,0,68,6,28,1,32,10,0,4,255,255,255,255,255,52,0,0,1,24,0
	.byte 1,2,6,20,0,0,192,255,255,249,16,0,0,18,128,128,68,128,140,208,0,0,13,8,0,3,0,68,6,28,1,32
	.byte 0,128,144,8,0,0,1,4,128,144,8,0,0,1,193,0,14,173,193,0,14,170,193,0,14,169,193,0,14,167,4,128
	.byte 144,8,0,0,1,193,0,14,173,193,0,14,170,193,0,14,169,193,0,14,167,4,128,144,8,0,0,1,193,0,14,173
	.byte 193,0,14,170,193,0,14,169,193,0,14,167,4,128,144,8,0,0,1,193,0,14,173,193,0,14,170,193,0,14,169,193
	.byte 0,14,167,4,128,144,8,0,0,1,193,0,14,173,193,0,14,170,193,0,14,169,193,0,14,167,0,128,144,8,0,0
	.byte 1,0,128,144,8,0,0,1,255,255,255,255,255,0,128,144,8,0,0,1,0,128,144,8,0,0,1,0,128,144,8,0
	.byte 0,1,0,128,144,8,0,0,1,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte 255,255,255,255,255,255,255,0,128,144,8,0,0,1,0,128,144,8,0,0,1,255,255,255,255,255,255,255,255,255,255,255
	.byte 255,255,255,255,98,111,101,104,109,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0:

	.byte 5
	.asciz "System_Reactive_NamespaceDoc"

	.byte 8,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "System_Reactive_NamespaceDoc"

LDIFF_SYM7=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM9
	.byte 2
	.asciz "System.Reactive.NamespaceDoc:.ctor"
	.long _System_Reactive_NamespaceDoc__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 2
	.long _System_Reactive_NamespaceDoc__ctor

LDIFF_SYM12=Lme_0 - _System_Reactive_NamespaceDoc__ctor
	.long LDIFF_SYM12
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 5
	.asciz "System_Reactive_Concurrency_NamespaceDoc"

	.byte 8,16
LDIFF_SYM13=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,35,0,0,7
	.asciz "System_Reactive_Concurrency_NamespaceDoc"

LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM15=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM16=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2
	.asciz "System.Reactive.Concurrency.NamespaceDoc:.ctor"
	.long _System_Reactive_Concurrency_NamespaceDoc__ctor
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM17=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM18=Lfde1_end - Lfde1_start
	.long LDIFF_SYM18
Lfde1_start:

	.long 0
	.align 2
	.long _System_Reactive_Concurrency_NamespaceDoc__ctor

LDIFF_SYM19=Lme_1 - _System_Reactive_Concurrency_NamespaceDoc__ctor
	.long LDIFF_SYM19
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 5
	.asciz "System_Reactive_Disposables_NamespaceDoc"

	.byte 8,16
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,0,7
	.asciz "System_Reactive_Disposables_NamespaceDoc"

LDIFF_SYM21=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM22=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM23=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2
	.asciz "System.Reactive.Disposables.NamespaceDoc:.ctor"
	.long _System_Reactive_Disposables_NamespaceDoc__ctor
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM24=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM25=Lfde2_end - Lfde2_start
	.long LDIFF_SYM25
Lfde2_start:

	.long 0
	.align 2
	.long _System_Reactive_Disposables_NamespaceDoc__ctor

LDIFF_SYM26=Lme_2 - _System_Reactive_Disposables_NamespaceDoc__ctor
	.long LDIFF_SYM26
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 5
	.asciz "System_Reactive_Linq_NamespaceDoc"

	.byte 8,16
LDIFF_SYM27=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,35,0,0,7
	.asciz "System_Reactive_Linq_NamespaceDoc"

LDIFF_SYM28=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM29=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM30=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2
	.asciz "System.Reactive.Linq.NamespaceDoc:.ctor"
	.long _System_Reactive_Linq_NamespaceDoc__ctor
	.long Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM31=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM32=Lfde3_end - Lfde3_start
	.long LDIFF_SYM32
Lfde3_start:

	.long 0
	.align 2
	.long _System_Reactive_Linq_NamespaceDoc__ctor

LDIFF_SYM33=Lme_3 - _System_Reactive_Linq_NamespaceDoc__ctor
	.long LDIFF_SYM33
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_5:

	.byte 5
	.asciz "System_Reactive_Subjects_NamespaceDoc"

	.byte 8,16
LDIFF_SYM34=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,0,0,7
	.asciz "System_Reactive_Subjects_NamespaceDoc"

LDIFF_SYM35=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM36=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM37=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2
	.asciz "System.Reactive.Subjects.NamespaceDoc:.ctor"
	.long _System_Reactive_Subjects_NamespaceDoc__ctor
	.long Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM38=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM39=Lfde4_end - Lfde4_start
	.long LDIFF_SYM39
Lfde4_start:

	.long 0
	.align 2
	.long _System_Reactive_Subjects_NamespaceDoc__ctor

LDIFF_SYM40=Lme_4 - _System_Reactive_Subjects_NamespaceDoc__ctor
	.long LDIFF_SYM40
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug

	.byte 0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:

	.byte 0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
