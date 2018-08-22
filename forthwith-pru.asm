;******************************************************************************
;* PRU C/C++ Codegen                                              Unix v2.2.1 *
;* Date/Time created: Wed Aug 22 17:59:33 2018                                *
;******************************************************************************
	.compiler_opts --abi=eabi --endian=little --hll_source=on --object_format=elf --silicon_version=3 --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("src/beagle-pru/forthwith-pru.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI PRU C/C++ Codegen Unix v2.2.1 Copyright (c) 2012-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/elcritch/projects/nervsy/sm/forthwith")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/include/string.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$1, DW_AT_decl_column(0x16)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$46)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$49)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$50)

	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("calloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("calloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/include/stdlib.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x97)
	.dwattr $C$DW$5, DW_AT_decl_column(0x19)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$50)

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$50)

	.dwendtag $C$DW$5

	.global	||xt_fetch||
	.data
	.align	1
	.elfsym	||xt_fetch||,SYM_SIZE(4)
||xt_fetch||:
	.bits	$CODE(||fetch||),32		; xt_fetch @ 0

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("xt_fetch")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("xt_fetch")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr ||xt_fetch||]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x03)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)

	.global	||xt_store||
	.data
	.align	1
	.elfsym	||xt_store||,SYM_SIZE(4)
||xt_store||:
	.bits	$CODE(||store||),32		; xt_store @ 0

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("xt_store")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("xt_store")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr ||xt_store||]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)

	.global	||xt_drop||
	.data
	.align	1
	.elfsym	||xt_drop||,SYM_SIZE(4)
||xt_drop||:
	.bits	$CODE(||drop||),32		; xt_drop @ 0

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("xt_drop")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("xt_drop")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr ||xt_drop||]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x13)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)

	.global	||xt_dup||
	.data
	.align	1
	.elfsym	||xt_dup||,SYM_SIZE(4)
||xt_dup||:
	.bits	$CODE(||dup||),32		; xt_dup @ 0

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("xt_dup")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("xt_dup")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr ||xt_dup||]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x19)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)

	.global	||xt_swap||
	.data
	.align	1
	.elfsym	||xt_swap||,SYM_SIZE(4)
||xt_swap||:
	.bits	$CODE(||swap||),32		; xt_swap @ 0

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("xt_swap")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("xt_swap")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr ||xt_swap||]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x20)
	.dwattr $C$DW$12, DW_AT_decl_column(0x01)

	.global	||xt_rot||
	.data
	.align	1
	.elfsym	||xt_rot||,SYM_SIZE(4)
||xt_rot||:
	.bits	$CODE(||rot||),32		; xt_rot @ 0

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("xt_rot")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("xt_rot")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr ||xt_rot||]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x29)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)

	.global	||xt_sadd||
	.data
	.align	1
	.elfsym	||xt_sadd||,SYM_SIZE(4)
||xt_sadd||:
	.bits	$CODE(||sadd||),32		; xt_sadd @ 0

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("xt_sadd")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("xt_sadd")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr ||xt_sadd||]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x34)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)

	.global	||xt_ssub||
	.data
	.align	1
	.elfsym	||xt_ssub||,SYM_SIZE(4)
||xt_ssub||:
	.bits	$CODE(||ssub||),32		; xt_ssub @ 0

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("xt_ssub")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("xt_ssub")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr ||xt_ssub||]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)

	.global	||xt_equals||
	.data
	.align	1
	.elfsym	||xt_equals||,SYM_SIZE(4)
||xt_equals||:
	.bits	$CODE(||equals||),32		; xt_equals @ 0

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("xt_equals")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("xt_equals")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr ||xt_equals||]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x54)
	.dwattr $C$DW$16, DW_AT_decl_column(0x01)

	.global	||xt_xor||
	.data
	.align	1
	.elfsym	||xt_xor||,SYM_SIZE(4)
||xt_xor||:
	.bits	$CODE(||xor||),32		; xt_xor @ 0

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("xt_xor")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("xt_xor")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr ||xt_xor||]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)

	.global	||xt_lit||
	.data
	.align	1
	.elfsym	||xt_lit||,SYM_SIZE(4)
||xt_lit||:
	.bits	$CODE(||lit||),32		; xt_lit @ 0

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("xt_lit")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("xt_lit")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr ||xt_lit||]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x04)
	.dwattr $C$DW$18, DW_AT_decl_column(0x01)

	.global	||xt_tick||
	.data
	.align	1
	.elfsym	||xt_tick||,SYM_SIZE(4)
||xt_tick||:
	.bits	$CODE(||tick||),32		; xt_tick @ 0

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("xt_tick")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("xt_tick")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr ||xt_tick||]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)

	.global	||xt_var_STATE||
	.data
	.align	1
	.elfsym	||xt_var_STATE||,SYM_SIZE(4)
||xt_var_STATE||:
	.bits	$CODE(||var_STATE||),32		; xt_var_STATE @ 0

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("xt_var_STATE")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("xt_var_STATE")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr ||xt_var_STATE||]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$20, DW_AT_decl_column(0x01)

	.global	||xt_var_HERE||
	.data
	.align	1
	.elfsym	||xt_var_HERE||,SYM_SIZE(4)
||xt_var_HERE||:
	.bits	$CODE(||var_HERE||),32		; xt_var_HERE @ 0

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("xt_var_HERE")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("xt_var_HERE")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr ||xt_var_HERE||]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$21, DW_AT_decl_column(0x01)

	.global	||xt_create||
	.data
	.align	1
	.elfsym	||xt_create||,SYM_SIZE(4)
||xt_create||:
	.bits	$CODE(||create||),32		; xt_create @ 0

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("xt_create")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("xt_create")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr ||xt_create||]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$22, DW_AT_decl_column(0x01)

	.global	||xt_comma||
	.data
	.align	1
	.elfsym	||xt_comma||,SYM_SIZE(4)
||xt_comma||:
	.bits	$CODE(||comma||),32		; xt_comma @ 0

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("xt_comma")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("xt_comma")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr ||xt_comma||]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x20)
	.dwattr $C$DW$23, DW_AT_decl_column(0x01)

	.global	||xt_lbrac||
	.data
	.align	1
	.elfsym	||xt_lbrac||,SYM_SIZE(4)
||xt_lbrac||:
	.bits	$CODE(||lbrac||),32		; xt_lbrac @ 0

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("xt_lbrac")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("xt_lbrac")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr ||xt_lbrac||]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x21)
	.dwattr $C$DW$24, DW_AT_decl_column(0x01)

	.global	||xt_rbrac||
	.data
	.align	1
	.elfsym	||xt_rbrac||,SYM_SIZE(4)
||xt_rbrac||:
	.bits	$CODE(||rbrac||),32		; xt_rbrac @ 0

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("xt_rbrac")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("xt_rbrac")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr ||xt_rbrac||]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x22)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)

	.global	||xt_xmask||
	.data
	.align	1
	.elfsym	||xt_xmask||,SYM_SIZE(4)
||xt_xmask||:
	.bits	$CODE(||xmask||),32		; xt_xmask @ 0

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("xt_xmask")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("xt_xmask")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr ||xt_xmask||]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x23)
	.dwattr $C$DW$26, DW_AT_decl_column(0x01)

	.global	||xt_word||
	.data
	.align	1
	.elfsym	||xt_word||,SYM_SIZE(4)
||xt_word||:
	.bits	$CODE(||word||),32		; xt_word @ 0

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("xt_word")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("xt_word")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr ||xt_word||]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x25)
	.dwattr $C$DW$27, DW_AT_decl_column(0x01)

	.global	||xt_number||
	.data
	.align	1
	.elfsym	||xt_number||,SYM_SIZE(4)
||xt_number||:
	.bits	$CODE(||number||),32		; xt_number @ 0

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("xt_number")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("xt_number")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr ||xt_number||]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x26)
	.dwattr $C$DW$28, DW_AT_decl_column(0x01)

	.global	||xt_find||
	.data
	.align	1
	.elfsym	||xt_find||,SYM_SIZE(4)
||xt_find||:
	.bits	$CODE(||find||),32		; xt_find @ 0

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("xt_find")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("xt_find")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr ||xt_find||]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x27)
	.dwattr $C$DW$29, DW_AT_decl_column(0x01)

	.global	||xt_cfa||
	.data
	.align	1
	.elfsym	||xt_cfa||,SYM_SIZE(4)
||xt_cfa||:
	.bits	$CODE(||cfa||),32		; xt_cfa @ 0

$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("xt_cfa")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("xt_cfa")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr ||xt_cfa||]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x28)
	.dwattr $C$DW$30, DW_AT_decl_column(0x01)

	.global	||xt_emit||
	.data
	.align	1
	.elfsym	||xt_emit||,SYM_SIZE(4)
||xt_emit||:
	.bits	$CODE(||emit||),32		; xt_emit @ 0

$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("xt_emit")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("xt_emit")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr ||xt_emit||]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)

	.global	||xt_ret_||
	.data
	.align	1
	.elfsym	||xt_ret_||,SYM_SIZE(4)
||xt_ret_||:
	.bits	$CODE(||ret_||),32		; xt_ret_ @ 0

$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("xt_ret_")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("xt_ret_")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr ||xt_ret_||]
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$32, DW_AT_decl_column(0x01)

	.global	||xt_immed||
	.common	||xt_immed||,16,1
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("xt_immed")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("xt_immed")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr ||xt_immed||]
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$33, DW_AT_decl_column(0x01)

	.global	||xt_branch||
	.data
	.align	1
	.elfsym	||xt_branch||,SYM_SIZE(4)
||xt_branch||:
	.bits	$CODE(||branch||),32		; xt_branch @ 0

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("xt_branch")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("xt_branch")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr ||xt_branch||]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$34, DW_AT_decl_column(0x01)

	.global	||xt_zbranch||
	.data
	.align	1
	.elfsym	||xt_zbranch||,SYM_SIZE(4)
||xt_zbranch||:
	.bits	$CODE(||zbranch||),32		; xt_zbranch @ 0

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("xt_zbranch")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("xt_zbranch")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr ||xt_zbranch||]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x44)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)

	.global	||xt_colon||
	.common	||xt_colon||,40,1
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("xt_colon")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("xt_colon")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr ||xt_colon||]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x56)
	.dwattr $C$DW$36, DW_AT_decl_column(0x01)

	.global	||xt_semicolon||
	.common	||xt_semicolon||,48,1
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("xt_semicolon")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("xt_semicolon")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr ||xt_semicolon||]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x62)
	.dwattr $C$DW$37, DW_AT_decl_column(0x01)

	.global	||xt_itpnum||
	.common	||xt_itpnum||,80,1
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("xt_itpnum")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("xt_itpnum")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr ||xt_itpnum||]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$38, DW_AT_decl_column(0x01)

	.global	||xt_itpnext||
	.common	||xt_itpnext||,76,1
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("xt_itpnext")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("xt_itpnext")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr ||xt_itpnext||]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$39, DW_AT_decl_column(0x01)

	.global	||xt_interpret||
	.common	||xt_interpret||,44,1
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("xt_interpret")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("xt_interpret")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr ||xt_interpret||]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$40, DW_AT_decl_column(0x01)

	.global	||xt_docolon||
	.data
	.align	1
	.elfsym	||xt_docolon||,SYM_SIZE(4)
||xt_docolon||:
	.bits	$CODE(||docolon||),32		; xt_docolon @ 0

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("xt_docolon")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("xt_docolon")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr ||xt_docolon||]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x19)
	.dwattr $C$DW$41, DW_AT_decl_column(0x01)

	.global	||xt_semi||
	.data
	.align	1
	.elfsym	||xt_semi||,SYM_SIZE(4)
||xt_semi||:
	.bits	$CODE(||semi||),32		; xt_semi @ 0

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("xt_semi")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("xt_semi")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr ||xt_semi||]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x23)
	.dwattr $C$DW$42, DW_AT_decl_column(0x01)

	.global	||xt_next||
	.data
	.align	1
	.elfsym	||xt_next||,SYM_SIZE(4)
||xt_next||:
	.bits	$CODE(||next||),32		; xt_next @ 0

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("xt_next")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("xt_next")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr ||xt_next||]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x28)
	.dwattr $C$DW$43, DW_AT_decl_column(0x01)

	.global	||xt_run||
	.data
	.align	1
	.elfsym	||xt_run||,SYM_SIZE(4)
||xt_run||:
	.bits	$CODE(||run||),32		; xt_run @ 0

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("xt_run")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("xt_run")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr ||xt_run||]
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$44, DW_AT_decl_column(0x01)

	.global	||xt_execs||
	.data
	.align	1
	.elfsym	||xt_execs||,SYM_SIZE(4)
||xt_execs||:
	.bits	$CODE(||execs||),32		; xt_execs @ 0

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("xt_execs")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("xt_execs")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr ||xt_execs||]
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$45, DW_AT_decl_column(0x01)

	.global	||xt_runs||
	.data
	.align	1
	.elfsym	||xt_runs||,SYM_SIZE(4)
||xt_runs||:
	.bits	$CODE(||runs||),32		; xt_runs @ 0

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("xt_runs")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("xt_runs")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr ||xt_runs||]
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x46)
	.dwattr $C$DW$46, DW_AT_decl_column(0x01)

	.global	||xt_quits||
	.data
	.align	1
	.elfsym	||xt_quits||,SYM_SIZE(4)
||xt_quits||:
	.bits	$CODE(||quits||),32		; xt_quits @ 0

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("xt_quits")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("xt_quits")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr ||xt_quits||]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$47, DW_AT_decl_column(0x01)

	.global	||xt_call00||
	.data
	.align	1
	.elfsym	||xt_call00||,SYM_SIZE(4)
||xt_call00||:
	.bits	$CODE(||call00||),32		; xt_call00 @ 0

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("xt_call00")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("xt_call00")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr ||xt_call00||]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x54)
	.dwattr $C$DW$48, DW_AT_decl_column(0x01)

	.global	||ctx||
	.data
	.align	1
	.elfsym	||ctx||,SYM_SIZE(4)
||ctx||:
	.bits	0,32			; ctx @ 0

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("ctx")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("ctx")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr ||ctx||]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x05)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0b)

	.global	||ctx_psp||
	.data
	.align	1
	.elfsym	||ctx_psp||,SYM_SIZE(4)
||ctx_psp||:
	.bits	0,32			; ctx_psp @ 0

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("ctx_psp")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("ctx_psp")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr ||ctx_psp||]
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0x06)
	.dwattr $C$DW$50, DW_AT_decl_column(0x11)

	.global	||ctx_rsp||
	.data
	.align	1
	.elfsym	||ctx_rsp||,SYM_SIZE(4)
||ctx_rsp||:
	.bits	0,32			; ctx_rsp @ 0

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("ctx_rsp")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("ctx_rsp")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr ||ctx_rsp||]
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0x07)
	.dwattr $C$DW$51, DW_AT_decl_column(0x11)

	.global	||ctx_regs||
	.data
	.align	1
	.elfsym	||ctx_regs||,SYM_SIZE(4)
||ctx_regs||:
	.bits	0,32			; ctx_regs @ 0

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("ctx_regs")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("ctx_regs")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr ||ctx_regs||]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0x08)
	.dwattr $C$DW$52, DW_AT_decl_column(0x10)

	.global	||num_basis||
	.sect	".rodata:.string:num_basis"
	.clink
	.align	1
	.elfsym	||num_basis||,SYM_SIZE(17)
||num_basis||:
	.bits	48,8			; num_basis[0] @ 0
	.bits	49,8			; num_basis[1] @ 8
	.bits	50,8			; num_basis[2] @ 16
	.bits	51,8			; num_basis[3] @ 24
	.bits	52,8			; num_basis[4] @ 32
	.bits	53,8			; num_basis[5] @ 40
	.bits	54,8			; num_basis[6] @ 48
	.bits	55,8			; num_basis[7] @ 56
	.bits	56,8			; num_basis[8] @ 64
	.bits	57,8			; num_basis[9] @ 72
	.bits	65,8			; num_basis[10] @ 80
	.bits	66,8			; num_basis[11] @ 88
	.bits	67,8			; num_basis[12] @ 96
	.bits	68,8			; num_basis[13] @ 104
	.bits	69,8			; num_basis[14] @ 112
	.bits	70,8			; num_basis[15] @ 120
	.bits	0,8			; num_basis[16] @ 128

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("num_basis")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("num_basis")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr ||num_basis||]
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0c)

	.sect	".rodata:$P$T0$1"
	.clink
	.align	1
	.elfsym	||$P$T0$1||,SYM_SIZE(16)
||$P$T0$1||:
	.bits	0,32			; $P$T0$1[0] @ 0
	.bits	0,32			; $P$T0$1[1] @ 32
	.bits	2,32			; $P$T0$1[2] @ 64
	.bits	0,32			; $P$T0$1[3] @ 96

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("$P$T0$1")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("$P$T0$1")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr ||$P$T0$1||]
	.dwattr $C$DW$54, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$54, DW_AT_decl_column(0x01)

	.sect	".rodata:$P$T1$2"
	.clink
	.align	1
	.elfsym	||$P$T1$2||,SYM_SIZE(40)
||$P$T1$2||:
	.bits	0,32			; $P$T1$2[0] @ 0
	.bits	0,32			; $P$T1$2[1] @ 32
	.bits	0,32			; $P$T1$2[2] @ 64
	.bits	48,32			; $P$T1$2[3] @ 96
	.bits	0,32			; $P$T1$2[4] @ 128
	.bits	0,32			; $P$T1$2[5] @ 160
	.bits	0,32			; $P$T1$2[6] @ 192
	.bits	0,32			; $P$T1$2[7] @ 224
	.bits	0,32			; $P$T1$2[8] @ 256
	.bits	0,32			; $P$T1$2[9] @ 288

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("$P$T1$2")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("$P$T1$2")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr ||$P$T1$2||]
	.dwattr $C$DW$55, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x56)
	.dwattr $C$DW$55, DW_AT_decl_column(0x01)

	.sect	".rodata:$P$T2$3"
	.clink
	.align	1
	.elfsym	||$P$T2$3||,SYM_SIZE(48)
||$P$T2$3||:
	.bits	0,32			; $P$T2$3[0] @ 0
	.bits	0,32			; $P$T2$3[1] @ 32
	.bits	0,32			; $P$T2$3[2] @ 64
	.bits	0,32			; $P$T2$3[3] @ 96
	.bits	0,32			; $P$T2$3[4] @ 128
	.bits	4,32			; $P$T2$3[5] @ 160
	.bits	0,32			; $P$T2$3[6] @ 192
	.bits	0,32			; $P$T2$3[7] @ 224
	.bits	8,32			; $P$T2$3[8] @ 256
	.bits	0,32			; $P$T2$3[9] @ 288
	.bits	0,32			; $P$T2$3[10] @ 320
	.bits	0,32			; $P$T2$3[11] @ 352

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("$P$T2$3")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("$P$T2$3")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr ||$P$T2$3||]
	.dwattr $C$DW$56, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x62)
	.dwattr $C$DW$56, DW_AT_decl_column(0x01)

	.sect	".rodata:$P$T3$4"
	.clink
	.align	1
	.elfsym	||$P$T3$4||,SYM_SIZE(80)
||$P$T3$4||:
	.bits	0,32			; $P$T3$4[0] @ 0
	.bits	0,32			; $P$T3$4[1] @ 32
	.bits	0,32			; $P$T3$4[2] @ 64
	.bits	56,32			; $P$T3$4[3] @ 96
	.bits	0,32			; $P$T3$4[4] @ 128
	.bits	3,32			; $P$T3$4[5] @ 160
	.bits	0,32			; $P$T3$4[6] @ 192
	.bits	0,32			; $P$T3$4[7] @ 224
	.bits	0,32			; $P$T3$4[8] @ 256
	.bits	80,32			; $P$T3$4[9] @ 288
	.bits	0,32			; $P$T3$4[10] @ 320
	.bits	0,32			; $P$T3$4[11] @ 352
	.bits	0,32			; $P$T3$4[12] @ 384
	.bits	48,32			; $P$T3$4[13] @ 416
	.bits	0,32			; $P$T3$4[14] @ 448
	.bits	0,32			; $P$T3$4[15] @ 480
	.bits	0,32			; $P$T3$4[16] @ 512
	.bits	0,32			; $P$T3$4[17] @ 544
	.bits	0,32			; $P$T3$4[18] @ 576
	.bits	0,32			; $P$T3$4[19] @ 608

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("$P$T3$4")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("$P$T3$4")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr ||$P$T3$4||]
	.dwattr $C$DW$57, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$57, DW_AT_decl_column(0x01)

	.sect	".rodata:$P$T4$5"
	.clink
	.align	1
	.elfsym	||$P$T4$5||,SYM_SIZE(76)
||$P$T4$5||:
	.bits	0,32			; $P$T4$5[0] @ 0
	.bits	0,32			; $P$T4$5[1] @ 32
	.bits	0,32			; $P$T4$5[2] @ 64
	.bits	112,32			; $P$T4$5[3] @ 96
	.bits	0,32			; $P$T4$5[4] @ 128
	.bits	0,32			; $P$T4$5[5] @ 160
	.bits	0,32			; $P$T4$5[6] @ 192
	.bits	0,32			; $P$T4$5[7] @ 224
	.bits	40,32			; $P$T4$5[8] @ 256
	.bits	0,32			; $P$T4$5[9] @ 288
	.bits	0,32			; $P$T4$5[10] @ 320
	.bits	0,32			; $P$T4$5[11] @ 352
	.bits	24,32			; $P$T4$5[12] @ 384
	.bits	0,32			; $P$T4$5[13] @ 416
	.bits	0,32			; $P$T4$5[14] @ 448
	.bits	0,32			; $P$T4$5[15] @ 480
	.bits	16,32			; $P$T4$5[16] @ 512
	.bits	0,32			; $P$T4$5[17] @ 544
	.bits	0,32			; $P$T4$5[18] @ 576

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("$P$T4$5")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("$P$T4$5")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||$P$T4$5||]
	.dwattr $C$DW$58, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$58, DW_AT_decl_column(0x01)

	.sect	".rodata:$P$T5$6"
	.clink
	.align	1
	.elfsym	||$P$T5$6||,SYM_SIZE(44)
||$P$T5$6||:
	.bits	0,32			; $P$T5$6[0] @ 0
	.bits	0,32			; $P$T5$6[1] @ 32
	.bits	0,32			; $P$T5$6[2] @ 64
	.bits	40,32			; $P$T5$6[3] @ 96
	.bits	0,32			; $P$T5$6[4] @ 128
	.bits	0,32			; $P$T5$6[5] @ 160
	.bits	0,32			; $P$T5$6[6] @ 192
	.bits	24,32			; $P$T5$6[7] @ 224
	.bits	0,32			; $P$T5$6[8] @ 256
	.bits	0,32			; $P$T5$6[9] @ 288
	.bits	0,32			; $P$T5$6[10] @ 320

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("$P$T5$6")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("$P$T5$6")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr ||$P$T5$6||]
	.dwattr $C$DW$59, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$59, DW_AT_decl_column(0x01)

;	/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/bin/optpru /tmp/TI3VCZhCSBG /tmp/TI3VCRdyMNQ 
;	/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/bin/acpiapru -@/tmp/TI3VCvKmDzv 
	.sect	".text:zbranch"
	.clink
	.global	||zbranch||

$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("zbranch")
	.dwattr $C$DW$60, DW_AT_low_pc(||zbranch||)
	.dwattr $C$DW$60, DW_AT_high_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("zbranch")
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$60, DW_AT_TI_begin_line(0x44)
	.dwattr $C$DW$60, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$60, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x44)
	.dwattr $C$DW$60, DW_AT_decl_column(0x01)
	.dwattr $C$DW$60, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 68,column 1,is_stmt,address ||zbranch||,isa 0

	.dwfde $C$DW$CIE, ||zbranch||
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("bpsp")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x38]

$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("psp")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("brsp")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x40]

$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("rsp")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x44]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("ip")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x48]

$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("x")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: zbranch                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||zbranch||:
;* --------------------------------------------------------------------------*
;* r19_0 assigned to x
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("x")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x4c]

	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        MOV       r20, r23
        QBNE      ||$C$L1||, r19, 0x00  ; [ALU_PRU] |68| x
;* --------------------------------------------------------------------------*
        LBBO      &r23, r19, 0, 4
        add       r19, r19, r23
        JMP       ||$C$L2||             ; [ALU_PRU] |68| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
        ADD r19, r19, 4
;* --------------------------------------------------------------------------*
||$C$L2||:    
        JMP       ||next||
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$60, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x44)
	.dwattr $C$DW$60, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$60

	.sect	".text:xor"
	.clink
	.global	||xor||

$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("xor")
	.dwattr $C$DW$69, DW_AT_low_pc(||xor||)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("xor")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x5f)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$69, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$69, DW_AT_decl_column(0x01)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 95,column 1,is_stmt,address ||xor||,isa 0

	.dwfde $C$DW$CIE, ||xor||
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_name("bpsp")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x38]

$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_name("psp")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("brsp")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x40]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("rsp")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x44]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("ip")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x48]

$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("x")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: xor                           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||xor||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r24, r16, 0, 4
        XOR       r23, r23, r24
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$69, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x5f)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text:xmask"
	.clink
	.global	||xmask||

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("xmask")
	.dwattr $C$DW$77, DW_AT_low_pc(||xmask||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("xmask")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$77, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x23)
	.dwattr $C$DW$77, DW_AT_decl_column(0x01)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 35,column 1,is_stmt,address ||xmask||,isa 0

	.dwfde $C$DW$CIE, ||xmask||
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("bpsp")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x38]

$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_name("psp")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("brsp")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x40]

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("rsp")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x44]

$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("ip")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x48]

$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("x")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: xmask                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||xmask||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||doxmask||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x23)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:write_char"
	.clink
	.global	||write_char||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("write_char")
	.dwattr $C$DW$85, DW_AT_low_pc(||write_char||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("write_char")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0xce)
	.dwattr $C$DW$85, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$85, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0xce)
	.dwattr $C$DW$85, DW_AT_decl_column(0x06)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 206,column 25,is_stmt,address ||write_char||,isa 0

	.dwfde $C$DW$CIE, ||write_char||
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("c")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: write_char                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||write_char||:
;* --------------------------------------------------------------------------*
;* r1_0  assigned to $O$C1
;* r17_0 assigned to $O$C2
;* r14_0 assigned to c
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("c")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x38]

;* r16_0 assigned to idx
$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("idx")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("idx")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x40]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 207,column 16,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |207| ctx
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |207| 
        LBBO      &r17, r0, 4, 4        ; [ALU_PRU] |207| $O$C2
        ADD       r16, r17, 0x14        ; [ALU_PRU] |207| idx,$O$C2
	.dwpsn	file "src/utilities.c",line 211,column 3,is_stmt,isa 0
        LBBO      &r1, r16, 0, 4        ; [ALU_PRU] |211| $O$C1,idx
        LBBO      &r0, r17, 24, 4       ; [ALU_PRU] |211| $O$C2
        MOV       r15, r1               ; [ALU_PRU] |211| $O$C1
        XOR       r0.b3, r0.b3, 0x80    ; [ALU_PRU] |211| 
        XOR       r15.b3, r15.b3, 0x80  ; [ALU_PRU] |211| 
        QBGE      ||$C$L3||, r0, r15    ; [ALU_PRU] |211| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 212,column 5,is_stmt,isa 0
        LBBO      &r0, r17, 28, 4       ; [ALU_PRU] |212| $O$C2
        SBBO      &r14.b0, r1, r0, 1    ; [ALU_PRU] |212| $O$C1,c
	.dwpsn	file "src/utilities.c",line 213,column 5,is_stmt,isa 0
        LBBO      &r0, r16, 0, 4        ; [ALU_PRU] |213| idx
        ADD       r0, r0, 0x01          ; [ALU_PRU] |213| 
        SBBO      &r0, r16, 0, 4        ; [ALU_PRU] |213| idx
;* --------------------------------------------------------------------------*
||$C$L3||:    
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0xda)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:write_str"
	.clink
	.global	||write_str||

$C$DW$90	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$90, DW_AT_name("write_str")
	.dwattr $C$DW$90, DW_AT_low_pc(||write_str||)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("write_str")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0xc2)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$90, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$90, DW_AT_decl_column(0x06)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 194,column 36,is_stmt,address ||write_str||,isa 0

	.dwfde $C$DW$CIE, ||write_str||
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("l")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("l")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x38]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("c")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x3c]


;***************************************************************
;* FNAME: write_str                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||write_str||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to $O$C1
;* r14_1 assigned to $O$L1
;* r14_0 assigned to l
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("l")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("l")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x38]

;* r18_0 assigned to c
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("c")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x48]

;* r20_0 assigned to idx
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("idx")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("idx")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x50]

;* r19_0 assigned to len
$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("len")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x4c]

;* r21_0 assigned to i
$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("i")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x54]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 195,column 15,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |195| ctx
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/utilities.c",line 194,column 36,is_stmt,isa 0
        MOV       r18, r15              ; [ALU_PRU] |194| c
	.dwpsn	file "src/utilities.c",line 195,column 15,is_stmt,isa 0
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |195| 
        LBBO      &r0, r0, 4, 4         ; [ALU_PRU] |195| $O$C1
        LBBO      &r20, r0, 20, 4       ; [ALU_PRU] |195| idx,$O$C1
	.dwpsn	file "src/utilities.c",line 196,column 15,is_stmt,isa 0
        LBBO      &r19, r0, 24, 4       ; [ALU_PRU] |196| len,$O$C1
	.dwpsn	file "src/utilities.c",line 199,column 23,is_stmt,isa 0
        QBEQ      ||$C$L5||, r14.b0, 0x00 ; [ALU_PRU] |199| l
;* --------------------------------------------------------------------------*
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |199| $O$L1,l
	.dwpsn	file "src/utilities.c",line 199,column 18,is_stmt,isa 0
        ZERO      &r21, 4               ; [ALU_PRU] |199| i
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 199
;*   Loop closing brace source line  : 202
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 255
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "src/utilities.c",line 199,column 23,is_stmt,isa 0
        MOV       r1, r19               ; [ALU_PRU] |199| len
        ADD       r0, r20, r21          ; [ALU_PRU] |199| idx,i
        XOR       r1.b3, r1.b3, 0x80    ; [ALU_PRU] |199| 
        XOR       r0.b3, r0.b3, 0x80    ; [ALU_PRU] |199| 
        QBGE      ||$C$L5||, r1, r0     ; [ALU_PRU] |199| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 201,column 5,is_stmt,isa 0
        LBBO      &r14.b0, r18, r21, 1  ; [ALU_PRU] |201| c,i
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("write_char")
	.dwattr $C$DW$98, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |201| write_char
	.dwpsn	file "src/utilities.c",line 199,column 53,is_stmt,isa 0
        SUB       r14.b1, r14.b1, 0x01  ; [ALU_PRU] |199| $O$L1,$O$L1
        ADD       r21, r21, 0x01        ; [ALU_PRU] |199| i,i
        QBNE      ||$C$L4||, r14.b1, 0x00 ; [ALU_PRU] |199| $O$L1
;* --------------------------------------------------------------------------*
||$C$L5||:    
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text:write_number"
	.clink
	.global	||write_number||

$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("write_number")
	.dwattr $C$DW$100, DW_AT_low_pc(||write_number||)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("write_number")
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$100, DW_AT_TI_begin_line(0xdd)
	.dwattr $C$DW$100, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$100, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$100, DW_AT_decl_column(0x06)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 222,column 1,is_stmt,address ||write_number||,isa 0

	.dwfde $C$DW$CIE, ||write_number||
$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("number")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: write_number                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||write_number||:
;* --------------------------------------------------------------------------*
;* r18_0 assigned to number
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("number")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x48]

	.dwcfi	cfa_offset, 0
        MOV       r18, r14              ; [ALU_PRU] |222| number
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/utilities.c",line 224,column 3,is_stmt,isa 0
        LDI       r14.b0, 0x30          ; [ALU_PRU] |224| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("write_char")
	.dwattr $C$DW$103, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |224| write_char
	.dwpsn	file "src/utilities.c",line 225,column 3,is_stmt,isa 0
        LDI       r14.b0, 0x78          ; [ALU_PRU] |225| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("write_char")
	.dwattr $C$DW$104, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |225| write_char
	.dwpsn	file "src/utilities.c",line 230,column 5,is_stmt,isa 0
        LDI       r1, ||num_basis||     ; [ALU_PRU] |230| num_basis
        AND       r0, r18, 0x0f         ; [ALU_PRU] |230| number
        LBBO      &r14.b0, r1, r0, 1    ; [ALU_PRU] |230| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("write_char")
	.dwattr $C$DW$105, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |230| write_char
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$100, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0xea)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text:word"
	.clink
	.global	||word||

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("word")
	.dwattr $C$DW$107, DW_AT_low_pc(||word||)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("word")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$107, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x25)
	.dwattr $C$DW$107, DW_AT_decl_column(0x01)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 37,column 1,is_stmt,address ||word||,isa 0

	.dwfde $C$DW$CIE, ||word||
$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("bpsp")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x38]

$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("psp")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("brsp")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x40]

$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("rsp")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x44]

$C$DW$112	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$112, DW_AT_name("ip")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x48]

$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_name("x")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: word                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||word||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||doword||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x25)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text:var_STATE"
	.clink
	.global	||var_STATE||

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("var_STATE")
	.dwattr $C$DW$115, DW_AT_low_pc(||var_STATE||)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("var_STATE")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$115, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$115, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$115, DW_AT_decl_column(0x01)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 27,column 1,is_stmt,address ||var_STATE||,isa 0

	.dwfde $C$DW$CIE, ||var_STATE||
$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("bpsp")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x38]

$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("psp")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("brsp")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x40]

$C$DW$119	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$119, DW_AT_name("rsp")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x44]

$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("ip")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x48]

$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("x")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: var_STATE                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||var_STATE||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||ctx||
        LBBO      &r24, r20, 4, 4
        LDI       r23, 0
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x1b)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text:var_HERE"
	.clink
	.global	||var_HERE||

$C$DW$123	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$123, DW_AT_name("var_HERE")
	.dwattr $C$DW$123, DW_AT_low_pc(||var_HERE||)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("var_HERE")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$123, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$123, DW_AT_decl_column(0x01)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 28,column 1,is_stmt,address ||var_HERE||,isa 0

	.dwfde $C$DW$CIE, ||var_HERE||
$C$DW$124	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$124, DW_AT_name("bpsp")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x38]

$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("psp")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$126	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$126, DW_AT_name("brsp")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x40]

$C$DW$127	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$127, DW_AT_name("rsp")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x44]

$C$DW$128	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$128, DW_AT_name("ip")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x48]

$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("x")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: var_HERE                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||var_HERE||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||ctx||
        LBBO      &r24, r20, 16, 4
        LDI       r23, 0
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$123, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x1c)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text:tick"
	.clink
	.global	||tick||

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("tick")
	.dwattr $C$DW$131, DW_AT_low_pc(||tick||)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("tick")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$131, DW_AT_TI_begin_line(0x0f)
	.dwattr $C$DW$131, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$131, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$131, DW_AT_decl_column(0x01)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 15,column 1,is_stmt,address ||tick||,isa 0

	.dwfde $C$DW$CIE, ||tick||
$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("bpsp")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x38]

$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("psp")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("brsp")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x40]

$C$DW$135	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$135, DW_AT_name("rsp")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x44]

$C$DW$136	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$136, DW_AT_name("ip")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x48]

$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("x")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: tick                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||tick||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LBBO      &r20, r19, 0, 4
        ADD r19, r19, 4
        MOV       r23, r20
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x0f)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text:swap"
	.clink
	.global	||swap||

$C$DW$139	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$139, DW_AT_name("swap")
	.dwattr $C$DW$139, DW_AT_low_pc(||swap||)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("swap")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$139, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x20)
	.dwattr $C$DW$139, DW_AT_decl_column(0x01)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 32,column 1,is_stmt,address ||swap||,isa 0

	.dwfde $C$DW$CIE, ||swap||
$C$DW$140	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$140, DW_AT_name("bpsp")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x38]

$C$DW$141	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$141, DW_AT_name("psp")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$142	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$142, DW_AT_name("brsp")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x40]

$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("rsp")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x44]

$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("ip")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x48]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("x")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: swap                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||swap||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r24, r16, 0, 4
        MOV       r20, r24
        MOV       r24, r23
        MOV       r23, r20
        SBBO      &r16, r24, 0, 4
        ADD r16, r16, 4
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$139, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x20)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text:store"
	.clink
	.global	||store||

$C$DW$147	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$147, DW_AT_name("store")
	.dwattr $C$DW$147, DW_AT_low_pc(||store||)
	.dwattr $C$DW$147, DW_AT_high_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("store")
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$147, DW_AT_TI_begin_line(0x0b)
	.dwattr $C$DW$147, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$147, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$147, DW_AT_decl_column(0x01)
	.dwattr $C$DW$147, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 11,column 1,is_stmt,address ||store||,isa 0

	.dwfde $C$DW$CIE, ||store||
$C$DW$148	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$148, DW_AT_name("bpsp")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x38]

$C$DW$149	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$149, DW_AT_name("psp")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$150	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$150, DW_AT_name("brsp")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x40]

$C$DW$151	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$151, DW_AT_name("rsp")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x44]

$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("ip")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x48]

$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("x")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: store                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||store||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r24, r16, 0, 4
        SBBO      &r24, r23, 0, 4
        JMP       ||next||
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$147, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$147, DW_AT_TI_end_line(0x0b)
	.dwattr $C$DW$147, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$147

	.sect	".text:ssub"
	.clink
	.global	||ssub||

$C$DW$155	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$155, DW_AT_name("ssub")
	.dwattr $C$DW$155, DW_AT_low_pc(||ssub||)
	.dwattr $C$DW$155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("ssub")
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0x3b)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$155, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$155, DW_AT_decl_column(0x01)
	.dwattr $C$DW$155, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 59,column 1,is_stmt,address ||ssub||,isa 0

	.dwfde $C$DW$CIE, ||ssub||
$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_name("bpsp")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x38]

$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_name("psp")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("brsp")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x40]

$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("rsp")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x44]

$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_name("ip")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x48]

$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("x")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: ssub                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||ssub||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r24, r16, 0, 4
        sub       r23, r23, r24
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$155, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x3b)
	.dwattr $C$DW$155, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$155

	.sect	".text:semi"
	.clink
	.global	||semi||

$C$DW$163	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$163, DW_AT_name("semi")
	.dwattr $C$DW$163, DW_AT_low_pc(||semi||)
	.dwattr $C$DW$163, DW_AT_high_pc(0x00)
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("semi")
	.dwattr $C$DW$163, DW_AT_external
	.dwattr $C$DW$163, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$163, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$163, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$163, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x23)
	.dwattr $C$DW$163, DW_AT_decl_column(0x01)
	.dwattr $C$DW$163, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 35,column 1,is_stmt,address ||semi||,isa 0

	.dwfde $C$DW$CIE, ||semi||
$C$DW$164	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$164, DW_AT_name("bpsp")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x38]

$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_name("psp")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("brsp")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x40]

$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_name("rsp")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x44]

$C$DW$168	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$168, DW_AT_name("ip")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x48]

$C$DW$169	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$169, DW_AT_name("x")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: semi                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||semi||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r18, r18, 4
        LBBO      &r19, r18, 0, 4
        JMP       ||next||
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$163, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$163, DW_AT_TI_end_line(0x23)
	.dwattr $C$DW$163, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$163

	.sect	".text:sadd"
	.clink
	.global	||sadd||

$C$DW$171	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$171, DW_AT_name("sadd")
	.dwattr $C$DW$171, DW_AT_low_pc(||sadd||)
	.dwattr $C$DW$171, DW_AT_high_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("sadd")
	.dwattr $C$DW$171, DW_AT_external
	.dwattr $C$DW$171, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$171, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$171, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$171, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x34)
	.dwattr $C$DW$171, DW_AT_decl_column(0x01)
	.dwattr $C$DW$171, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 52,column 1,is_stmt,address ||sadd||,isa 0

	.dwfde $C$DW$CIE, ||sadd||
$C$DW$172	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$172, DW_AT_name("bpsp")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x38]

$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_name("psp")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_name("brsp")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x40]

$C$DW$175	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$175, DW_AT_name("rsp")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x44]

$C$DW$176	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$176, DW_AT_name("ip")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x48]

$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("x")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: sadd                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||sadd||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r24, r16, 0, 4
        add       r23, r23, r24
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$171, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$171, DW_AT_TI_end_line(0x34)
	.dwattr $C$DW$171, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$171

	.sect	".text:runs"
	.clink
	.global	||runs||

$C$DW$179	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$179, DW_AT_name("runs")
	.dwattr $C$DW$179, DW_AT_low_pc(||runs||)
	.dwattr $C$DW$179, DW_AT_high_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("runs")
	.dwattr $C$DW$179, DW_AT_external
	.dwattr $C$DW$179, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$179, DW_AT_TI_begin_line(0x46)
	.dwattr $C$DW$179, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$179, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x46)
	.dwattr $C$DW$179, DW_AT_decl_column(0x01)
	.dwattr $C$DW$179, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 70,column 1,is_stmt,address ||runs||,isa 0

	.dwfde $C$DW$CIE, ||runs||
$C$DW$180	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$180, DW_AT_name("bpsp")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x38]

$C$DW$181	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$181, DW_AT_name("psp")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("brsp")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x40]

$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("rsp")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x44]

$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_name("ip")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x48]

$C$DW$185	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$185, DW_AT_name("x")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: runs                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||runs||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        MOV       r21, r23
        JMP       ||run||
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$179, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$179, DW_AT_TI_end_line(0x46)
	.dwattr $C$DW$179, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$179

	.sect	".text:run"
	.clink
	.global	||run||

$C$DW$187	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$187, DW_AT_name("run")
	.dwattr $C$DW$187, DW_AT_low_pc(||run||)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("run")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$187, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$187, DW_AT_decl_column(0x01)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 45,column 1,is_stmt,address ||run||,isa 0

	.dwfde $C$DW$CIE, ||run||
$C$DW$188	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$188, DW_AT_name("bpsp")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x38]

$C$DW$189	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$189, DW_AT_name("psp")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$190	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$190, DW_AT_name("brsp")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x40]

$C$DW$191	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$191, DW_AT_name("rsp")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x44]

$C$DW$192	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$192, DW_AT_name("ip")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x48]

$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_name("x")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: run                           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||run||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LBBO      &r20, r21, 0, 4
        ADD r21, r21, 4
        JMP       r20.w0
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$187, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text:rot"
	.clink
	.global	||rot||

$C$DW$195	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$195, DW_AT_name("rot")
	.dwattr $C$DW$195, DW_AT_low_pc(||rot||)
	.dwattr $C$DW$195, DW_AT_high_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("rot")
	.dwattr $C$DW$195, DW_AT_external
	.dwattr $C$DW$195, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$195, DW_AT_TI_begin_line(0x29)
	.dwattr $C$DW$195, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$195, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x29)
	.dwattr $C$DW$195, DW_AT_decl_column(0x01)
	.dwattr $C$DW$195, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 41,column 1,is_stmt,address ||rot||,isa 0

	.dwfde $C$DW$CIE, ||rot||
$C$DW$196	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$196, DW_AT_name("bpsp")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x38]

$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("psp")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_name("brsp")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x40]

$C$DW$199	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$199, DW_AT_name("rsp")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x44]

$C$DW$200	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$200, DW_AT_name("ip")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x48]

$C$DW$201	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$201, DW_AT_name("x")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: rot                           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||rot||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r24, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r25, r16, 0, 4
        MOV       r20, r25
        MOV       r25, r24
        MOV       r24, r23
        MOV       r23, r20
        SBBO      &r16, r25, 0, 4
        ADD r16, r16, 4
        SBBO      &r16, r24, 0, 4
        ADD r16, r16, 4
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$195, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$195, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$195

	.sect	".text:ret_"
	.clink
	.global	||ret_||

$C$DW$203	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$203, DW_AT_name("ret_")
	.dwattr $C$DW$203, DW_AT_low_pc(||ret_||)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("ret_")
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$203, DW_AT_TI_begin_line(0x2b)
	.dwattr $C$DW$203, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$203, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$203, DW_AT_decl_column(0x01)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 43,column 1,is_stmt,address ||ret_||,isa 0

	.dwfde $C$DW$CIE, ||ret_||
$C$DW$204	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$204, DW_AT_name("bpsp")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x38]

$C$DW$205	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$205, DW_AT_name("psp")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$206	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$206, DW_AT_name("brsp")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x40]

$C$DW$207	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$207, DW_AT_name("rsp")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x44]

$C$DW$208	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$208, DW_AT_name("ip")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x48]

$C$DW$209	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$209, DW_AT_name("x")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: ret_                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||ret_||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||doret||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$203, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text:rbrac"
	.clink
	.global	||rbrac||

$C$DW$211	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$211, DW_AT_name("rbrac")
	.dwattr $C$DW$211, DW_AT_low_pc(||rbrac||)
	.dwattr $C$DW$211, DW_AT_high_pc(0x00)
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("rbrac")
	.dwattr $C$DW$211, DW_AT_external
	.dwattr $C$DW$211, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$211, DW_AT_TI_begin_line(0x22)
	.dwattr $C$DW$211, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$211, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x22)
	.dwattr $C$DW$211, DW_AT_decl_column(0x01)
	.dwattr $C$DW$211, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 34,column 1,is_stmt,address ||rbrac||,isa 0

	.dwfde $C$DW$CIE, ||rbrac||
$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_name("bpsp")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x38]

$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("psp")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_name("brsp")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x40]

$C$DW$215	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$215, DW_AT_name("rsp")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x44]

$C$DW$216	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$216, DW_AT_name("ip")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x48]

$C$DW$217	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$217, DW_AT_name("x")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: rbrac                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||rbrac||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||dorbrac||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$211, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x22)
	.dwattr $C$DW$211, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$211

	.sect	".text:quits"
	.clink
	.global	||quits||

$C$DW$219	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$219, DW_AT_name("quits")
	.dwattr $C$DW$219, DW_AT_low_pc(||quits||)
	.dwattr $C$DW$219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("quits")
	.dwattr $C$DW$219, DW_AT_external
	.dwattr $C$DW$219, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$219, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$219, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$219, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$219, DW_AT_decl_column(0x01)
	.dwattr $C$DW$219, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 78,column 1,is_stmt,address ||quits||,isa 0

	.dwfde $C$DW$CIE, ||quits||
$C$DW$220	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$220, DW_AT_name("bpsp")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x38]

$C$DW$221	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$221, DW_AT_name("psp")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$222	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$222, DW_AT_name("brsp")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x40]

$C$DW$223	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$223, DW_AT_name("rsp")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x44]

$C$DW$224	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$224, DW_AT_name("ip")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x48]

$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_name("x")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: quits                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||quits||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$219, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x4e)
	.dwattr $C$DW$219, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$219

	.sect	".text:is_whitespace"
	.clink

$C$DW$227	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$227, DW_AT_name("is_whitespace")
	.dwattr $C$DW$227, DW_AT_low_pc(||is_whitespace||)
	.dwattr $C$DW$227, DW_AT_high_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("is_whitespace")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$227, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$227, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$227, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$227, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$227, DW_AT_decl_line(0x97)
	.dwattr $C$DW$227, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$227, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 151,column 35,is_stmt,address ||is_whitespace||,isa 0

	.dwfde $C$DW$CIE, ||is_whitespace||
$C$DW$228	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$228, DW_AT_name("c")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: is_whitespace                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||is_whitespace||:
;* --------------------------------------------------------------------------*
;* r14_0 assigned to c
$C$DW$229	.dwtag  DW_TAG_variable
	.dwattr $C$DW$229, DW_AT_name("c")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x38]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 152,column 3,is_stmt,isa 0
        LDI       r0.b0, 0x00           ; [ALU_PRU] |152| 
        QBNE      ||$C$L6||, r14.b0, 0x20 ; [ALU_PRU] |152| c
;* --------------------------------------------------------------------------*
        LDI       r0.b0, 0x01           ; [ALU_PRU] |152| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
        LDI       r0.b1, 0x00           ; [ALU_PRU] |152| 
        QBNE      ||$C$L7||, r14.b0, 0x00 ; [ALU_PRU] |152| c
;* --------------------------------------------------------------------------*
        LDI       r0.b1, 0x01           ; [ALU_PRU] |152| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
        OR        r0.b1, r0.b1, r0.b0   ; [ALU_PRU] |152| 
        LDI       r0.b0, 0x00           ; [ALU_PRU] |152| 
        QBNE      ||$C$L8||, r14.b0, 0x09 ; [ALU_PRU] |152| c
;* --------------------------------------------------------------------------*
        LDI       r0.b0, 0x01           ; [ALU_PRU] |152| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
        OR        r0.b1, r0.b1, r0.b0   ; [ALU_PRU] |152| 
        LDI       r0.b0, 0x00           ; [ALU_PRU] |152| 
        QBNE      ||$C$L9||, r14.b0, 0x0d ; [ALU_PRU] |152| c
;* --------------------------------------------------------------------------*
        LDI       r0.b0, 0x01           ; [ALU_PRU] |152| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
        OR        r0.b1, r0.b1, r0.b0   ; [ALU_PRU] |152| 
        LDI       r0.b0, 0x00           ; [ALU_PRU] |152| 
        QBNE      ||$C$L10||, r14.b0, 0x0a ; [ALU_PRU] |152| c
;* --------------------------------------------------------------------------*
        LDI       r0.b0, 0x01           ; [ALU_PRU] |152| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
        OR        r14.b0, r0.b1, r0.b0  ; [ALU_PRU] |152| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$227, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$227, DW_AT_TI_end_line(0x99)
	.dwattr $C$DW$227, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$227

	.sect	".text:parse_word"
	.clink
	.global	||parse_word||

$C$DW$231	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$231, DW_AT_name("parse_word")
	.dwattr $C$DW$231, DW_AT_low_pc(||parse_word||)
	.dwattr $C$DW$231, DW_AT_high_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("parse_word")
	.dwattr $C$DW$231, DW_AT_external
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$231, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$231, DW_AT_TI_begin_line(0x9b)
	.dwattr $C$DW$231, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$231, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$231, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$231, DW_AT_decl_column(0x09)
	.dwattr $C$DW$231, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 157,column 1,is_stmt,address ||parse_word||,isa 0

	.dwfde $C$DW$CIE, ||parse_word||
$C$DW$232	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$232, DW_AT_name("idx")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("idx")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x38]

$C$DW$233	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$233, DW_AT_name("len")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x39]

$C$DW$234	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$234, DW_AT_name("tib")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("tib")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$235	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$235, DW_AT_name("word_start")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("word_start")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x40]

$C$DW$236	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$236, DW_AT_name("word_stop")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("word_stop")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x44]


;***************************************************************
;* FNAME: parse_word                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||parse_word||:
;* --------------------------------------------------------------------------*
;* r14_0 assigned to $O$C1
;* r0_2  assigned to $O$U6
;* r1_0  assigned to $O$U5
;* r0_2  assigned to c
$C$DW$237	.dwtag  DW_TAG_variable
	.dwattr $C$DW$237, DW_AT_name("c")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg2]

;* r14_2 assigned to idx
$C$DW$238	.dwtag  DW_TAG_variable
	.dwattr $C$DW$238, DW_AT_name("idx")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("idx")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x3a]

;* r14_1 assigned to len
$C$DW$239	.dwtag  DW_TAG_variable
	.dwattr $C$DW$239, DW_AT_name("len")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x39]

;* r15_0 assigned to tib
$C$DW$240	.dwtag  DW_TAG_variable
	.dwattr $C$DW$240, DW_AT_name("tib")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("tib")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x3c]

;* r16_0 assigned to word_start
$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("word_start")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("word_start")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x40]

;* r17_0 assigned to word_stop
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("word_stop")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("word_stop")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x44]

;* r14_3 assigned to start
$C$DW$243	.dwtag  DW_TAG_variable
	.dwattr $C$DW$243, DW_AT_name("start")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("start")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, 0
        MOV       r14.b2, r14.b0        ; [ALU_PRU] |157| idx
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
        LBBO      &r0.b2, r15, r14.b2, 1 ; [ALU_PRU] $O$U6,tib,idx
        JMP       ||$C$L19||            ; [ALU_PRU] |157| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
        ADD       r14.b2, r14.b2, 0x01  ; [ALU_PRU] idx,idx
        LBBO      &r0.b2, r15, r14.b2, 1 ; [ALU_PRU] $O$U6,tib,idx
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L12||
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "src/utilities.c",line 174,column 12,is_stmt,isa 0
        QBEQ      ||$C$L18||, r0.b2, 0x00 ; [ALU_PRU] |174| $O$U6
;* --------------------------------------------------------------------------*
        XOR       r19, r14.b1, r1       ; [ALU_PRU] |174| len
        XOR       r20, r14.b2, r1       ; [ALU_PRU] |174| idx
        ZERO      &r18, 4               ; [ALU_PRU] |174| 
        QBLT      ||$C$L13||, r19, r20  ; [ALU_PRU] |174| 
;* --------------------------------------------------------------------------*
        LDI       r18, 0x0001           ; [ALU_PRU] |174| 
;* --------------------------------------------------------------------------*
||$C$L13||:    
        ZERO      &r19, 4               ; [ALU_PRU] |174| 
        QBNE      ||$C$L14||, r0.b2, 0x29 ; [ALU_PRU] |174| $O$U6
;* --------------------------------------------------------------------------*
        LDI       r19, 0x0001           ; [ALU_PRU] |174| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
        OR        r0, r18, r19          ; [ALU_PRU] |174| 
        QBEQ      ||$C$L11||, r0, 0x00  ; [ALU_PRU] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 162,column 3,is_stmt,isa 0
        JMP       ||$C$L18||            ; [ALU_PRU] |162| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L15||
;*
;*   Loop source line                : 167
;*   Loop closing brace source line  : 168
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "src/utilities.c",line 169,column 5,is_stmt,isa 0
        QBEQ      ||$C$L19||, r0.b2, 0x00 ; [ALU_PRU] |169| c
;* --------------------------------------------------------------------------*
        XOR       r19, r14.b1, r1       ; [ALU_PRU] |169| len
        XOR       r20, r14.b2, r1       ; [ALU_PRU] |169| idx
        ZERO      &r18, 4               ; [ALU_PRU] |169| 
        QBGE      ||$C$L16||, r19, r20  ; [ALU_PRU] |169| 
;* --------------------------------------------------------------------------*
        LDI       r18, 0x0001           ; [ALU_PRU] |169| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
        ZERO      &r19, 4               ; [ALU_PRU] |169| 
        QBEQ      ||$C$L17||, r0.b2, 0x0a ; [ALU_PRU] |169| c
;* --------------------------------------------------------------------------*
        LDI       r19, 0x0001           ; [ALU_PRU] |169| 
;* --------------------------------------------------------------------------*
||$C$L17||:    
        AND       r18, r18, r19         ; [ALU_PRU] |169| 
        QBEQ      ||$C$L19||, r18, 0x00 ; [ALU_PRU] |169| 
;* --------------------------------------------------------------------------*
        ADD       r14.b2, r14.b2, 0x01  ; [ALU_PRU] idx,idx
        LBBO      &r0.b2, r15, r14.b2, 1 ; [ALU_PRU] $O$U6,tib,idx
	.dwpsn	file "src/utilities.c",line 168,column 7,is_stmt,isa 0
        JMP       ||$C$L15||            ; [ALU_PRU] |168| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
        ADD       r14.b2, r14.b2, 0x01  ; [ALU_PRU] idx,idx
        LBBO      &r0.b2, r15, r14.b2, 1 ; [ALU_PRU] $O$U6,tib,idx
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L19||
;* --------------------------------------------------------------------------*
||$C$L19||:    
	.dwpsn	file "src/utilities.c",line 162,column 10,is_stmt,isa 0
        QBEQ      ||$C$L22||, r0.b2, 0x00 ; [ALU_PRU] |162| $O$U6
;* --------------------------------------------------------------------------*
        MOV       r14.b0, r0.b2         ; [ALU_PRU] |162| $O$U6
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("is_whitespace")
	.dwattr $C$DW$244, DW_AT_TI_call

        JAL       r3.w2, ||is_whitespace|| ; [ALU_PRU] |162| is_whitespace
        ZERO      &r18, 4               ; [ALU_PRU] |162| 
        QBBS      ||$C$L20||, r14.b0, 0x00 ; [ALU_PRU] |162| 
;* --------------------------------------------------------------------------*
        LDI       r18, 0x0001           ; [ALU_PRU] |162| 
;* --------------------------------------------------------------------------*
||$C$L20||:    
        LDI32     r1, 0x80000000        ; [ALU_PRU] |162| 
        ZERO      &r19, 4               ; [ALU_PRU] |162| 
        XOR       r20, r14.b1, r1       ; [ALU_PRU] |162| len
        XOR       r21, r14.b2, r1       ; [ALU_PRU] |162| idx
        QBLT      ||$C$L21||, r20, r21  ; [ALU_PRU] |162| 
;* --------------------------------------------------------------------------*
        LDI       r19, 0x0001           ; [ALU_PRU] |162| 
;* --------------------------------------------------------------------------*
||$C$L21||:    
        OR        r18, r19, r18         ; [ALU_PRU] |162| 
        QBEQ      ||$C$L18||, r18, 0x00 ; [ALU_PRU] |162| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 166,column 3,is_stmt,isa 0
        QBEQ      ||$C$L15||, r0.b2, 0x5c ; [ALU_PRU] |166| $O$U6
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 173,column 3,is_stmt,isa 0
        QBEQ      ||$C$L12||, r0.b2, 0x28 ; [ALU_PRU] |173| $O$U6
;* --------------------------------------------------------------------------*
||$C$L22||:    
	.dwpsn	file "src/utilities.c",line 183,column 3,is_stmt,isa 0
        MOV       r14.b3, r14.b2        ; [ALU_PRU] |183| start,idx
        ADD       r14.b2, r14.b3, 0x01  ; [ALU_PRU] |183| idx,start
	.dwpsn	file "src/utilities.c",line 184,column 3,is_stmt,isa 0
        JMP       ||$C$L24||            ; [ALU_PRU] |184| 
;* --------------------------------------------------------------------------*
||$C$L23||:    
	.dwpsn	file "src/utilities.c",line 185,column 5,is_stmt,isa 0
        ADD       r14.b2, r14.b2, 0x01  ; [ALU_PRU] |185| idx,idx
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L24||
;* --------------------------------------------------------------------------*
||$C$L24||:    
	.dwpsn	file "src/utilities.c",line 184,column 10,is_stmt,isa 0
        ADD       r1, r14.b2, r15       ; [ALU_PRU] |184| $O$U5,idx,tib
        LBBO      &r14.b0, r1, 0, 1     ; [ALU_PRU] |184| $O$C1,$O$U5
        QBEQ      ||$C$L26||, r14.b0, 0x00 ; [ALU_PRU] |184| $O$C1
;* --------------------------------------------------------------------------*
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("is_whitespace")
	.dwattr $C$DW$245, DW_AT_TI_call

        JAL       r3.w2, ||is_whitespace|| ; [ALU_PRU] |184| is_whitespace
        ZERO      &r18, 4               ; [ALU_PRU] |184| 
        LDI32     r0, 0x80000000        ; [ALU_PRU] |184| 
        XOR       r19, r14.b1, r0       ; [ALU_PRU] |184| len
        XOR       r0, r14.b2, r0        ; [ALU_PRU] |184| idx
        QBLT      ||$C$L25||, r19, r0   ; [ALU_PRU] |184| 
;* --------------------------------------------------------------------------*
        LDI       r18, 0x0001           ; [ALU_PRU] |184| 
;* --------------------------------------------------------------------------*
||$C$L25||:    
        OR        r0, r18, r14.b0       ; [ALU_PRU] |184| 
        QBEQ      ||$C$L23||, r0, 0x00  ; [ALU_PRU] |184| 
;* --------------------------------------------------------------------------*
||$C$L26||:    
	.dwpsn	file "src/utilities.c",line 187,column 3,is_stmt,isa 0
        ADD       r0, r15, r14.b3       ; [ALU_PRU] |187| tib,start
	.dwpsn	file "src/utilities.c",line 189,column 3,is_stmt,isa 0
        RSB       r14, r14.b3, r14.b2   ; [ALU_PRU] |189| start,idx
	.dwpsn	file "src/utilities.c",line 187,column 3,is_stmt,isa 0
        SBBO      &r0, r16, 0, 4        ; [ALU_PRU] |187| word_start
	.dwpsn	file "src/utilities.c",line 188,column 3,is_stmt,isa 0
        SBBO      &r1, r17, 0, 4        ; [ALU_PRU] |188| word_stop,$O$U5
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$231, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$231, DW_AT_TI_end_line(0xbe)
	.dwattr $C$DW$231, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$231

	.sect	".text:parse_number"
	.clink
	.global	||parse_number||

$C$DW$247	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$247, DW_AT_name("parse_number")
	.dwattr $C$DW$247, DW_AT_low_pc(||parse_number||)
	.dwattr $C$DW$247, DW_AT_high_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("parse_number")
	.dwattr $C$DW$247, DW_AT_external
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$247, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$247, DW_AT_TI_begin_line(0xec)
	.dwattr $C$DW$247, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$247, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$247, DW_AT_decl_line(0xec)
	.dwattr $C$DW$247, DW_AT_decl_column(0x09)
	.dwattr $C$DW$247, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 238,column 1,is_stmt,address ||parse_number||,isa 0

	.dwfde $C$DW$CIE, ||parse_number||
$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_name("len")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x38]

$C$DW$249	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$249, DW_AT_name("tib")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("tib")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$250	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$250, DW_AT_name("number")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x40]

$C$DW$251	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$251, DW_AT_name("errcode")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("errcode")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x44]


;***************************************************************
;* FNAME: parse_number                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||parse_number||:
;* --------------------------------------------------------------------------*
;* r18_0 assigned to $O$U34
;* r14_3 assigned to $O$L1
;* r14_0 assigned to len
$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("len")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x38]

;* r15_0 assigned to tib
$C$DW$253	.dwtag  DW_TAG_variable
	.dwattr $C$DW$253, DW_AT_name("tib")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("tib")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x3c]

;* r16_0 assigned to number
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("number")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x40]

;* r17_0 assigned to errcode
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("errcode")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("errcode")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x44]

;* r14_2 assigned to err
$C$DW$256	.dwtag  DW_TAG_variable
	.dwattr $C$DW$256, DW_AT_name("err")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("err")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x3a]

;* r19_0 assigned to c
$C$DW$257	.dwtag  DW_TAG_variable
	.dwattr $C$DW$257, DW_AT_name("c")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x4c]

;* r14_1 assigned to idx
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("idx")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("idx")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x39]

;* r28_0 assigned to neg
$C$DW$259	.dwtag  DW_TAG_variable
	.dwattr $C$DW$259, DW_AT_name("neg")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("neg")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x70]

;* r29_0 assigned to num
$C$DW$260	.dwtag  DW_TAG_variable
	.dwattr $C$DW$260, DW_AT_name("num")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("num")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x74]

;* r1_0  assigned to i
$C$DW$261	.dwtag  DW_TAG_variable
	.dwattr $C$DW$261, DW_AT_name("i")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg4]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 240,column 12,is_stmt,isa 0
        LDI       r14.b2, 0x00          ; [ALU_PRU] |240| err
	.dwpsn	file "src/utilities.c",line 248,column 3,is_stmt,isa 0
        LDI32     r0, 0x80000000        ; [ALU_PRU] |248| 
        LDI32     r1, 0x80000002        ; [ALU_PRU] |248| 
	.dwpsn	file "src/utilities.c",line 244,column 15,is_stmt,isa 0
        LDI       r28, 0x0001           ; [ALU_PRU] |244| neg
	.dwpsn	file "src/utilities.c",line 245,column 15,is_stmt,isa 0
        ZERO      &r29, 4               ; [ALU_PRU] |245| num
	.dwpsn	file "src/utilities.c",line 240,column 12,is_stmt,isa 0
        MOV       r14.b1, r14.b2        ; [ALU_PRU] |240| idx,err
	.dwpsn	file "src/utilities.c",line 248,column 3,is_stmt,isa 0
        XOR       r18, r14.b0, r0       ; [ALU_PRU] |248| len
        QBLT      ||$C$L29||, r1, r18   ; [ALU_PRU] |248| 
;* --------------------------------------------------------------------------*
        LBBO      &r1.b0, r15, 0, 1     ; [ALU_PRU] |248| tib
        QBNE      ||$C$L29||, r1.b0, 0x30 ; [ALU_PRU] |248| 
;* --------------------------------------------------------------------------*
        LBBO      &r1.b0, r15, 1, 1     ; [ALU_PRU] |248| tib
        QBNE      ||$C$L29||, r1.b0, 0x78 ; [ALU_PRU] |248| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 249,column 5,is_stmt,isa 0
        LDI       r14.b1, 0x02          ; [ALU_PRU] |249| idx
	.dwpsn	file "src/utilities.c",line 251,column 3,is_stmt,isa 0
        JMP       ||$C$L29||            ; [ALU_PRU] |251| 
;* --------------------------------------------------------------------------*
||$C$L27||:    
	.dwpsn	file "src/utilities.c",line 262,column 9,is_stmt,isa 0
        LSL       r18, r29, 0x04        ; [ALU_PRU] |262| num
	.dwpsn	file "src/utilities.c",line 263,column 9,is_stmt,isa 0
        LDI       r14.b2, 0x00          ; [ALU_PRU] |263| err
	.dwpsn	file "src/utilities.c",line 262,column 9,is_stmt,isa 0
        ADD       r29, r18, r1          ; [ALU_PRU] |262| num,i
	.dwpsn	file "src/utilities.c",line 264,column 9,is_stmt,isa 0
        JMP       ||$C$L29||            ; [ALU_PRU] |264| 
;* --------------------------------------------------------------------------*
||$C$L28||:    
	.dwpsn	file "src/utilities.c",line 256,column 7,is_stmt,isa 0
        FILL      &r28, 4               ; [ALU_PRU] |256| neg
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L29||
;* --------------------------------------------------------------------------*
||$C$L29||:    
	.dwpsn	file "src/utilities.c",line 251,column 10,is_stmt,isa 0
        MOV       r1, r0                ; [ALU_PRU] |251| 
        XOR       r18, r14.b0, r0       ; [ALU_PRU] |251| len
        XOR       r1, r14.b1, r1        ; [ALU_PRU] |251| idx
        QBGE      ||$C$L31||, r18, r1   ; [ALU_PRU] |251| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 252,column 5,is_stmt,isa 0
        LBBO      &r19.b0, r15, r14.b1, 1 ; [ALU_PRU] |252| c,tib,idx
	.dwpsn	file "src/utilities.c",line 253,column 5,is_stmt,isa 0
        LDI       r14.b2, 0x01          ; [ALU_PRU] |253| err
	.dwpsn	file "src/utilities.c",line 252,column 5,is_stmt,isa 0
        ADD       r14.b1, r14.b1, 0x01  ; [ALU_PRU] |252| idx,idx
	.dwpsn	file "src/utilities.c",line 255,column 5,is_stmt,isa 0
        QBEQ      ||$C$L28||, r19.b0, 0x2d ; [ALU_PRU] |255| c
;* --------------------------------------------------------------------------*
        LDI       r18, ||num_basis||    ; [ALU_PRU] $O$U34,num_basis
	.dwpsn	file "src/utilities.c",line 260,column 16,is_stmt,isa 0
        ZERO      &r1, 4                ; [ALU_PRU] |260| i
	.dwpsn	file "src/utilities.c",line 260,column 21,is_stmt,isa 0
        LDI       r14.b3, 0x10          ; [ALU_PRU] |260| $O$L1
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L30||
;*
;*   Loop source line                : 260
;*   Loop closing brace source line  : 266
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 16
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L30||:    
	.dwpsn	file "src/utilities.c",line 261,column 7,is_stmt,isa 0
        LBBO      &r19.b1, r18, 0, 1    ; [ALU_PRU] |261| $O$U34
        QBEQ      ||$C$L27||, r19.b0, r19.b1 ; [ALU_PRU] |261| c
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 260,column 21,is_stmt,isa 0
        ADD       r18, r18, 0x01        ; [ALU_PRU] |260| $O$U34,$O$U34
        SUB       r14.b3, r14.b3, 0x01  ; [ALU_PRU] |260| $O$L1,$O$L1
        ADD       r1, r1, 0x01          ; [ALU_PRU] |260| i,i
        QBNE      ||$C$L30||, r14.b3, 0x00 ; [ALU_PRU] |260| $O$L1
;* --------------------------------------------------------------------------*
||$C$L31||:    
	.dwpsn	file "src/utilities.c",line 272,column 3,is_stmt,isa 0
        MOV       r0, r14.b2            ; [ALU_PRU] |272| err
	.dwpsn	file "src/utilities.c",line 271,column 3,is_stmt,isa 0
        XIN       0, &r26, 4            ; [ALU_PRU] |271| 
	.dwpsn	file "src/utilities.c",line 274,column 3,is_stmt,isa 0
        MOV       r14, r14.b1           ; [ALU_PRU] |274| idx
	.dwpsn	file "src/utilities.c",line 271,column 3,is_stmt,isa 0
        SBBO      &r26, r16, 0, 4       ; [ALU_PRU] |271| number
	.dwpsn	file "src/utilities.c",line 272,column 3,is_stmt,isa 0
        SBBO      &r0, r17, 0, 4        ; [ALU_PRU] |272| errcode
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$247, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$247, DW_AT_TI_end_line(0x113)
	.dwattr $C$DW$247, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$247

	.sect	".text:number"
	.clink
	.global	||number||

$C$DW$263	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$263, DW_AT_name("number")
	.dwattr $C$DW$263, DW_AT_low_pc(||number||)
	.dwattr $C$DW$263, DW_AT_high_pc(0x00)
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$263, DW_AT_external
	.dwattr $C$DW$263, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$263, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$263, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$263, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x26)
	.dwattr $C$DW$263, DW_AT_decl_column(0x01)
	.dwattr $C$DW$263, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 38,column 1,is_stmt,address ||number||,isa 0

	.dwfde $C$DW$CIE, ||number||
$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_name("bpsp")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x38]

$C$DW$265	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$265, DW_AT_name("psp")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$266	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$266, DW_AT_name("brsp")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x40]

$C$DW$267	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$267, DW_AT_name("rsp")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x44]

$C$DW$268	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$268, DW_AT_name("ip")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x48]

$C$DW$269	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$269, DW_AT_name("x")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: number                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||number||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||donumber||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$263, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$263, DW_AT_TI_end_line(0x26)
	.dwattr $C$DW$263, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$263

	.sect	".text:next"
	.clink
	.global	||next||

$C$DW$271	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$271, DW_AT_name("next")
	.dwattr $C$DW$271, DW_AT_low_pc(||next||)
	.dwattr $C$DW$271, DW_AT_high_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("next")
	.dwattr $C$DW$271, DW_AT_external
	.dwattr $C$DW$271, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$271, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$271, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x28)
	.dwattr $C$DW$271, DW_AT_decl_column(0x01)
	.dwattr $C$DW$271, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 40,column 1,is_stmt,address ||next||,isa 0

	.dwfde $C$DW$CIE, ||next||
$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_name("bpsp")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x38]

$C$DW$273	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$273, DW_AT_name("psp")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$274	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$274, DW_AT_name("brsp")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x40]

$C$DW$275	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$275, DW_AT_name("rsp")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x44]

$C$DW$276	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$276, DW_AT_name("ip")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x48]

$C$DW$277	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$277, DW_AT_name("x")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: next                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||next||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LBBO      &r21, r19, 0, 4
        ADD r19, r19, 4
        JMP       ||run||
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$271, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x28)
	.dwattr $C$DW$271, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$271

	.sect	".text:lit"
	.clink
	.global	||lit||

$C$DW$279	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$279, DW_AT_name("lit")
	.dwattr $C$DW$279, DW_AT_low_pc(||lit||)
	.dwattr $C$DW$279, DW_AT_high_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("lit")
	.dwattr $C$DW$279, DW_AT_external
	.dwattr $C$DW$279, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$279, DW_AT_TI_begin_line(0x04)
	.dwattr $C$DW$279, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$279, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x04)
	.dwattr $C$DW$279, DW_AT_decl_column(0x01)
	.dwattr $C$DW$279, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 4,column 1,is_stmt,address ||lit||,isa 0

	.dwfde $C$DW$CIE, ||lit||
$C$DW$280	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$280, DW_AT_name("bpsp")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x38]

$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_name("psp")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$282	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$282, DW_AT_name("brsp")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x40]

$C$DW$283	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$283, DW_AT_name("rsp")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x44]

$C$DW$284	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$284, DW_AT_name("ip")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x48]

$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_name("x")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: lit                           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||lit||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LBBO      &r20, r19, 0, 4
        ADD r19, r19, 4
        MOV       r23, r20
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$279, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$279, DW_AT_TI_end_line(0x04)
	.dwattr $C$DW$279, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$279

	.sect	".text:lbrac"
	.clink
	.global	||lbrac||

$C$DW$287	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$287, DW_AT_name("lbrac")
	.dwattr $C$DW$287, DW_AT_low_pc(||lbrac||)
	.dwattr $C$DW$287, DW_AT_high_pc(0x00)
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("lbrac")
	.dwattr $C$DW$287, DW_AT_external
	.dwattr $C$DW$287, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$287, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$287, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$287, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x21)
	.dwattr $C$DW$287, DW_AT_decl_column(0x01)
	.dwattr $C$DW$287, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 33,column 1,is_stmt,address ||lbrac||,isa 0

	.dwfde $C$DW$CIE, ||lbrac||
$C$DW$288	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$288, DW_AT_name("bpsp")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x38]

$C$DW$289	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$289, DW_AT_name("psp")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$290	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$290, DW_AT_name("brsp")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x40]

$C$DW$291	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$291, DW_AT_name("rsp")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x44]

$C$DW$292	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$292, DW_AT_name("ip")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x48]

$C$DW$293	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$293, DW_AT_name("x")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: lbrac                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||lbrac||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||dolbrac||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$287, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$287, DW_AT_TI_end_line(0x21)
	.dwattr $C$DW$287, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$287

	.sect	".text:forth_push"
	.clink
	.global	||forth_push||

$C$DW$295	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$295, DW_AT_name("forth_push")
	.dwattr $C$DW$295, DW_AT_low_pc(||forth_push||)
	.dwattr $C$DW$295, DW_AT_high_pc(0x00)
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("forth_push")
	.dwattr $C$DW$295, DW_AT_external
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$295, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$295, DW_AT_TI_begin_line(0x3d)
	.dwattr $C$DW$295, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$295, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$295, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$295, DW_AT_decl_column(0x05)
	.dwattr $C$DW$295, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/forthwith.c",line 61,column 29,is_stmt,address ||forth_push||,isa 0

	.dwfde $C$DW$CIE, ||forth_push||
$C$DW$296	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$296, DW_AT_name("val")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: forth_push                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_push||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to $O$C1
;* r15_0 assigned to $O$C2
;* r0_0  assigned to $O$C3
;* r1_0  assigned to $O$v1
;* r14_0 assigned to val
$C$DW$297	.dwtag  DW_TAG_variable
	.dwattr $C$DW$297, DW_AT_name("val")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x38]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/forthwith.c",line 62,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |62| ctx
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |62| $O$v1
        LBBO      &r0, r1, 8, 4         ; [ALU_PRU] |62| $O$C3,$O$v1
        LBBO      &r15, r0, 0, 4        ; [ALU_PRU] |62| $O$C2,$O$C3
        LBBO      &r16, r0, 4, 4        ; [ALU_PRU] |62| $O$C3
        LBBO      &r0, r0, 8, 4         ; [ALU_PRU] |62| $O$C3
        LSL       r0, r0, 0x02          ; [ALU_PRU] |62| 
        ADD       r0, r0, r16           ; [ALU_PRU] |62| 
        QBGT      ||$C$L32||, r0, r15   ; [ALU_PRU] |62| $O$C2
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
	.dwpsn	file "src/forthwith.c",line 63,column 5,is_stmt,isa 0
        SBBO      &r14, r15, 0, 4       ; [ALU_PRU] |63| $O$C2,val
	.dwpsn	file "src/forthwith.c",line 64,column 5,is_stmt,isa 0
        LBBO      &r0, r1, 8, 4         ; [ALU_PRU] |64| $O$C1,$O$v1
	.dwpsn	file "src/forthwith.c",line 65,column 5,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |65| 
	.dwpsn	file "src/forthwith.c",line 64,column 5,is_stmt,isa 0
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |64| $O$C1
        ADD       r1, r1, 0x04          ; [ALU_PRU] |64| 
        SBBO      &r1, r0, 0, 4         ; [ALU_PRU] |64| $O$C1
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L32||:    
	.dwpsn	file "src/forthwith.c",line 68,column 5,is_stmt,isa 0
        FILL      &r14, 4               ; [ALU_PRU] |68| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$295, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$295, DW_AT_TI_end_line(0x45)
	.dwattr $C$DW$295, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$295

	.sect	".text:forth_pop"
	.clink
	.global	||forth_pop||

$C$DW$300	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$300, DW_AT_name("forth_pop")
	.dwattr $C$DW$300, DW_AT_low_pc(||forth_pop||)
	.dwattr $C$DW$300, DW_AT_high_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("forth_pop")
	.dwattr $C$DW$300, DW_AT_external
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$300, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$300, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$300, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$300, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$300, DW_AT_decl_line(0x48)
	.dwattr $C$DW$300, DW_AT_decl_column(0x09)
	.dwattr $C$DW$300, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/forthwith.c",line 72,column 21,is_stmt,address ||forth_pop||,isa 0

	.dwfde $C$DW$CIE, ||forth_pop||

;***************************************************************
;* FNAME: forth_pop                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_pop||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to $O$C16
;* r1_0  assigned to $O$v1
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/forthwith.c",line 73,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |73| ctx
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |73| $O$v1
        LBBO      &r0, r1, 8, 4         ; [ALU_PRU] |73| $O$C16,$O$v1
        LBBO      &r14, r0, 4, 4        ; [ALU_PRU] |73| $O$C16
        LBBO      &r15, r0, 0, 4        ; [ALU_PRU] |73| $O$C16
        QBLE      ||$C$L33||, r14, r15  ; [ALU_PRU] |73| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
	.dwpsn	file "src/forthwith.c",line 74,column 5,is_stmt,isa 0
        LBBO      &r14, r0, 0, 4        ; [ALU_PRU] |74| $O$C16
        SUB       r14, r14, 0x04        ; [ALU_PRU] |74| 
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |74| $O$C16
	.dwpsn	file "src/forthwith.c",line 75,column 5,is_stmt,isa 0
        LBBO      &r0, r1, 8, 4         ; [ALU_PRU] |75| $O$v1
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |75| 
        LBBO      &r14, r0, 0, 4        ; [ALU_PRU] |75| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L33||:    
	.dwpsn	file "src/forthwith.c",line 78,column 5,is_stmt,isa 0
        LDI       r0, 0x0002            ; [ALU_PRU] |78| 
        LBBO      &r1, r1, 4, 4         ; [ALU_PRU] |78| $O$v1
	.dwpsn	file "src/forthwith.c",line 79,column 5,is_stmt,isa 0
        ZERO      &r14, 4               ; [ALU_PRU] |79| 
	.dwpsn	file "src/forthwith.c",line 78,column 5,is_stmt,isa 0
        SBBO      &r0, r1, 4, 4         ; [ALU_PRU] |78| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$300, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$300, DW_AT_TI_end_line(0x51)
	.dwattr $C$DW$300, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$300

	.sect	".text:forth_init"
	.clink
	.global	||forth_init||

$C$DW$303	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$303, DW_AT_name("forth_init")
	.dwattr $C$DW$303, DW_AT_low_pc(||forth_init||)
	.dwattr $C$DW$303, DW_AT_high_pc(0x00)
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("forth_init")
	.dwattr $C$DW$303, DW_AT_external
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$303, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$303, DW_AT_TI_begin_line(0x14)
	.dwattr $C$DW$303, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$303, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$303, DW_AT_decl_line(0x14)
	.dwattr $C$DW$303, DW_AT_decl_column(0x05)
	.dwattr $C$DW$303, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/forthwith.c",line 20,column 18,is_stmt,address ||forth_init||,isa 0

	.dwfde $C$DW$CIE, ||forth_init||

;***************************************************************
;* FNAME: forth_init                    FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto, 10 SOE     *
;***************************************************************

||forth_init||:
;* --------------------------------------------------------------------------*
;* r5_0  assigned to $O$C5
;* r0_0  assigned to $O$C6
;* r4_0  assigned to $O$C7
;* r0_0  assigned to $O$C8
;* r1_0  assigned to $O$C9
;* r0_0  assigned to $O$C10
;* r4_0  assigned to $O$v1
;* r14_0 assigned to $O$T1
;* r14_0 assigned to $O$T2
;* r14_0 assigned to $O$T3
;* r14_0 assigned to $O$T4
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x0a          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 10
	.dwpsn	file "src/forthwith.c",line 22,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |22| 
        LDI       r15, 0x001c           ; [ALU_PRU] |22| 
        SBBO      &r3.b2, r2, 0, 10     ; [ALU_PRU] 
	.dwcfi	save_reg_to_mem, 14, -10
	.dwcfi	save_reg_to_mem, 15, -9
	.dwcfi	save_reg_to_mem, 16, -8
	.dwcfi	save_reg_to_mem, 17, -7
	.dwcfi	save_reg_to_mem, 18, -6
	.dwcfi	save_reg_to_mem, 19, -5
	.dwcfi	save_reg_to_mem, 20, -4
	.dwcfi	save_reg_to_mem, 21, -3
	.dwcfi	save_reg_to_mem, 22, -2
	.dwcfi	save_reg_to_mem, 23, -1
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("calloc")
	.dwattr $C$DW$304, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |22| calloc
        LDI       r5, ||ctx||           ; [ALU_PRU] |22| $O$C5,ctx
	.dwpsn	file "src/forthwith.c",line 24,column 3,is_stmt,isa 0
        LDI       r15, 0x0010           ; [ALU_PRU] |24| 
	.dwpsn	file "src/forthwith.c",line 22,column 3,is_stmt,isa 0
        MOV       r4, r14               ; [ALU_PRU] |22| 
	.dwpsn	file "src/forthwith.c",line 24,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |24| 
	.dwpsn	file "src/forthwith.c",line 22,column 3,is_stmt,isa 0
        SBBO      &r4, r5, 0, 4         ; [ALU_PRU] |22| $O$C5,$O$v1
	.dwpsn	file "src/forthwith.c",line 24,column 3,is_stmt,isa 0
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("calloc")
	.dwattr $C$DW$305, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |24| calloc
	.dwpsn	file "src/forthwith.c",line 25,column 3,is_stmt,isa 0
        LDI       r15, 0x0020           ; [ALU_PRU] |25| 
	.dwpsn	file "src/forthwith.c",line 24,column 3,is_stmt,isa 0
        SBBO      &r14, r4, 0, 4        ; [ALU_PRU] |24| $O$v1
	.dwpsn	file "src/forthwith.c",line 25,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |25| 
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |25| $O$v1,$O$C5
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("calloc")
	.dwattr $C$DW$306, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |25| calloc
	.dwpsn	file "src/forthwith.c",line 26,column 3,is_stmt,isa 0
        LDI       r15, 0x000c           ; [ALU_PRU] |26| 
	.dwpsn	file "src/forthwith.c",line 25,column 3,is_stmt,isa 0
        SBBO      &r14, r4, 4, 4        ; [ALU_PRU] |25| $O$v1
	.dwpsn	file "src/forthwith.c",line 26,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |26| 
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |26| $O$v1,$O$C5
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("calloc")
	.dwattr $C$DW$307, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |26| calloc
	.dwpsn	file "src/forthwith.c",line 27,column 3,is_stmt,isa 0
        LDI       r15, 0x000c           ; [ALU_PRU] |27| 
	.dwpsn	file "src/forthwith.c",line 26,column 3,is_stmt,isa 0
        SBBO      &r14, r4, 8, 4        ; [ALU_PRU] |26| $O$v1
	.dwpsn	file "src/forthwith.c",line 27,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |27| 
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |27| $O$v1,$O$C5
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("calloc")
	.dwattr $C$DW$308, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |27| calloc
	.dwpsn	file "src/forthwith.c",line 28,column 3,is_stmt,isa 0
        LDI       r15, 0x000c           ; [ALU_PRU] |28| 
	.dwpsn	file "src/forthwith.c",line 27,column 3,is_stmt,isa 0
        SBBO      &r14, r4, 12, 4       ; [ALU_PRU] |27| $O$v1
	.dwpsn	file "src/forthwith.c",line 28,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |28| 
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |28| $O$v1,$O$C5
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("calloc")
	.dwattr $C$DW$309, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |28| calloc
        SBBO      &r14, r4, 16, 4       ; [ALU_PRU] |28| $O$v1
	.dwpsn	file "src/forthwith.c",line 29,column 3,is_stmt,isa 0
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |29| $O$v1,$O$C5
;* --------------------------------------------------------------------------*
        LDI       r14, 0x0001           ; [ALU_PRU] |29| 
        LDI       r15, 0x000c           ; [ALU_PRU] |29| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("calloc")
	.dwattr $C$DW$310, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |29| calloc
        SBBO      &r14, r4, 20, 4       ; [ALU_PRU] |29| $O$v1
	.dwpsn	file "src/forthwith.c",line 30,column 3,is_stmt,isa 0
        LDI       r15, 0x000c           ; [ALU_PRU] |30| 
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |30| $O$v1,$O$C5
        LDI       r14, 0x0001           ; [ALU_PRU] |30| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("calloc")
	.dwattr $C$DW$311, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |30| calloc
	.dwpsn	file "src/forthwith.c",line 32,column 3,is_stmt,isa 0
        LDI       r1, ||ctx_psp||       ; [ALU_PRU] |32| ctx_psp
	.dwpsn	file "src/forthwith.c",line 30,column 3,is_stmt,isa 0
        SBBO      &r14, r4, 24, 4       ; [ALU_PRU] |30| $O$v1
	.dwpsn	file "src/forthwith.c",line 33,column 3,is_stmt,isa 0
        LDI       r14, ||ctx_rsp||      ; [ALU_PRU] |33| ctx_rsp
	.dwpsn	file "src/forthwith.c",line 32,column 3,is_stmt,isa 0
        LBBO      &r0, r4, 8, 4         ; [ALU_PRU] |32| $O$C10,$O$v1
        SBBO      &r0, r1, 0, 4         ; [ALU_PRU] |32| $O$C10
	.dwpsn	file "src/forthwith.c",line 33,column 3,is_stmt,isa 0
        LBBO      &r1, r4, 12, 4        ; [ALU_PRU] |33| $O$v1
        SBBO      &r1, r14, 0, 4        ; [ALU_PRU] |33| 
	.dwpsn	file "src/forthwith.c",line 34,column 3,is_stmt,isa 0
        LDI       r14, ||ctx_regs||     ; [ALU_PRU] |34| ctx_regs
        LBBO      &r1, r4, 0, 4         ; [ALU_PRU] |34| $O$v1
        SBBO      &r1, r14, 0, 4        ; [ALU_PRU] |34| 
	.dwpsn	file "src/forthwith.c",line 38,column 3,is_stmt,isa 0
        LDI       r1, 0x0600            ; [ALU_PRU] |38| $O$C9
	.dwpsn	file "src/forthwith.c",line 47,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |47| 
	.dwpsn	file "src/forthwith.c",line 38,column 3,is_stmt,isa 0
        SBBO      &r1, r0, 8, 4         ; [ALU_PRU] |38| $O$C10,$O$C9
	.dwpsn	file "src/forthwith.c",line 39,column 3,is_stmt,isa 0
        LBBO      &r0, r4, 12, 4        ; [ALU_PRU] |39| $O$v1
        SBBO      &r1, r0, 8, 4         ; [ALU_PRU] |39| $O$C9
	.dwpsn	file "src/forthwith.c",line 40,column 3,is_stmt,isa 0
        LDI       r0, 0x0300            ; [ALU_PRU] |40| 
        LBBO      &r1, r4, 16, 4        ; [ALU_PRU] |40| $O$v1
        SBBO      &r0, r1, 8, 4         ; [ALU_PRU] |40| 
	.dwpsn	file "src/forthwith.c",line 41,column 3,is_stmt,isa 0
        LDI       r0, 0x1800            ; [ALU_PRU] |41| $O$C8
        LBBO      &r1, r4, 20, 4        ; [ALU_PRU] |41| $O$v1
        SBBO      &r0, r1, 8, 4         ; [ALU_PRU] |41| $O$C8
	.dwpsn	file "src/forthwith.c",line 42,column 3,is_stmt,isa 0
        LBBO      &r1, r4, 24, 4        ; [ALU_PRU] |42| $O$v1
        SBBO      &r0, r1, 8, 4         ; [ALU_PRU] |42| $O$C8
	.dwpsn	file "src/forthwith.c",line 47,column 3,is_stmt,isa 0
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |47| $O$C7,$O$C5
        LBBO      &r0, r4, 8, 4         ; [ALU_PRU] |47| $O$C7
        LBBO      &r0, r0, 8, 4         ; [ALU_PRU] |47| 
        ADD       r15, r0, 0x01         ; [ALU_PRU] |47| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("calloc")
	.dwattr $C$DW$312, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |47| calloc
        LBBO      &r0, r4, 8, 4         ; [ALU_PRU] |47| $O$v1
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |47| 
	.dwpsn	file "src/forthwith.c",line 48,column 3,is_stmt,isa 0
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |48| $O$v1,$O$C5
	.dwpsn	file "src/forthwith.c",line 51,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |51| 
	.dwpsn	file "src/forthwith.c",line 48,column 3,is_stmt,isa 0
        LBBO      &r0, r4, 8, 4         ; [ALU_PRU] |48| $O$v1
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |48| 
        ADD       r1, r1, 0x04          ; [ALU_PRU] |48| 
        SBBO      &r1, r0, 0, 4         ; [ALU_PRU] |48| 
	.dwpsn	file "src/forthwith.c",line 49,column 3,is_stmt,isa 0
        LBBO      &r0, r4, 8, 4         ; [ALU_PRU] |49| $O$C6,$O$v1
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |49| $O$C6
        SBBO      &r1, r0, 4, 4         ; [ALU_PRU] |49| $O$C6
	.dwpsn	file "src/forthwith.c",line 51,column 3,is_stmt,isa 0
        LBBO      &r0, r4, 12, 4        ; [ALU_PRU] |51| $O$v1
        LBBO      &r15, r0, 8, 4        ; [ALU_PRU] |51| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("calloc")
	.dwattr $C$DW$313, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |51| calloc
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |51| $O$v1,$O$C5
        LBBO      &r0, r4, 12, 4        ; [ALU_PRU] |51| $O$v1
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |51| $O$T4
        LBBO      &r0, r4, 12, 4        ; [ALU_PRU] |51| $O$v1
        SBBO      &r14, r0, 4, 4        ; [ALU_PRU] |51| $O$T4
	.dwpsn	file "src/forthwith.c",line 53,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |53| 
        LBBO      &r0, r4, 16, 4        ; [ALU_PRU] |53| $O$v1
        LBBO      &r15, r0, 8, 4        ; [ALU_PRU] |53| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("calloc")
	.dwattr $C$DW$314, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |53| calloc
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |53| $O$v1,$O$C5
        LBBO      &r0, r4, 16, 4        ; [ALU_PRU] |53| $O$v1
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |53| $O$T3
        LBBO      &r0, r4, 16, 4        ; [ALU_PRU] |53| $O$v1
        SBBO      &r14, r0, 4, 4        ; [ALU_PRU] |53| $O$T3
	.dwpsn	file "src/forthwith.c",line 54,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |54| 
        LBBO      &r0, r4, 20, 4        ; [ALU_PRU] |54| $O$v1
        LBBO      &r15, r0, 8, 4        ; [ALU_PRU] |54| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("calloc")
	.dwattr $C$DW$315, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |54| calloc
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |54| $O$v1,$O$C5
        LBBO      &r0, r4, 20, 4        ; [ALU_PRU] |54| $O$v1
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |54| $O$T2
        LBBO      &r0, r4, 20, 4        ; [ALU_PRU] |54| $O$v1
        SBBO      &r14, r0, 4, 4        ; [ALU_PRU] |54| $O$T2
	.dwpsn	file "src/forthwith.c",line 55,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |55| 
        LBBO      &r0, r4, 24, 4        ; [ALU_PRU] |55| $O$v1
        LBBO      &r15, r0, 8, 4        ; [ALU_PRU] |55| 
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("calloc")
	.dwattr $C$DW$316, DW_AT_TI_call

        JAL       r3.w2, ||calloc||     ; [ALU_PRU] |55| calloc
        LBBO      &r4, r5, 0, 4         ; [ALU_PRU] |55| $O$v1,$O$C5
        LBBO      &r0, r4, 24, 4        ; [ALU_PRU] |55| $O$v1
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |55| $O$T1
        LBBO      &r0, r4, 24, 4        ; [ALU_PRU] |55| $O$v1
        SBBO      &r14, r0, 4, 4        ; [ALU_PRU] |55| $O$T1
	.dwpsn	file "src/forthwith.c",line 57,column 3,is_stmt,isa 0
        FILL      &r14, 4               ; [ALU_PRU] |57| 
        LBBO      &r3.b2, r2, 0, 10     ; [ALU_PRU] 
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
	.dwcfi	restore_reg, 16
	.dwcfi	restore_reg, 17
	.dwcfi	restore_reg, 18
	.dwcfi	restore_reg, 19
	.dwcfi	restore_reg, 20
	.dwcfi	restore_reg, 21
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 23
        ADD       r2, r2, 0x0a          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$303, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$303, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$303, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$303

	.sect	".text:forth_exec"
	.clink
	.global	||forth_exec||

$C$DW$318	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$318, DW_AT_name("forth_exec")
	.dwattr $C$DW$318, DW_AT_low_pc(||forth_exec||)
	.dwattr $C$DW$318, DW_AT_high_pc(0x00)
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("forth_exec")
	.dwattr $C$DW$318, DW_AT_external
	.dwattr $C$DW$318, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$318, DW_AT_TI_begin_line(0x6e)
	.dwattr $C$DW$318, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$318, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$318, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$318, DW_AT_decl_column(0x09)
	.dwattr $C$DW$318, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/forthwith.c",line 110,column 37,is_stmt,address ||forth_exec||,isa 0

	.dwfde $C$DW$CIE, ||forth_exec||
$C$DW$319	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$319, DW_AT_name("bpsp")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x38]

$C$DW$320	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$320, DW_AT_name("psp")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$321	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$321, DW_AT_name("brsp")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x40]

$C$DW$322	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$322, DW_AT_name("rsp")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x44]

$C$DW$323	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$323, DW_AT_name("ip")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x48]

$C$DW$324	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$324, DW_AT_name("x")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: forth_exec                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_exec||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r23, ||ctx_psp||
        LBBO      &r16, r23, 0, 4
        LBBO      &r15, r23, 4, 4
        LDI       r23, ||ctx_rsp||
        LBBO      &r18, r23, 0, 4
        LBBO      &r17, r23, 4, 4
        LDI       r23, ||ctx_regs||
        LBBO      &r19, r23, 8, 4
        LBBO      &r20, r23, 4, 4
        LBBO      &r21, r23, 0, 4
        JAL      r3.w2, ||next||
        LDI       r23, ||ctx_psp||
        SBBO      &r23, r16, 0, 4
        LDI       r23, ||ctx_rsp||
        SBBO      &r23, r18, 0, 4
        LDI       r23, ||ctx_regs||
        SBBO      &r23, r19, 8, 4
        SBBO      &r23, r20, 4, 4
        SBBO      &r23, r21, 0, 4
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$318, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$318, DW_AT_TI_end_line(0x72)
	.dwattr $C$DW$318, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$318

	.sect	".text:forth_eval_string"
	.clink
	.global	||forth_eval_string||

$C$DW$326	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$326, DW_AT_name("forth_eval_string")
	.dwattr $C$DW$326, DW_AT_low_pc(||forth_eval_string||)
	.dwattr $C$DW$326, DW_AT_high_pc(0x00)
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("forth_eval_string")
	.dwattr $C$DW$326, DW_AT_external
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$326, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$326, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$326, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$326, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$326, DW_AT_decl_line(0x89)
	.dwattr $C$DW$326, DW_AT_decl_column(0x05)
	.dwattr $C$DW$326, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/forthwith.c",line 137,column 36,is_stmt,address ||forth_eval_string||,isa 0

	.dwfde $C$DW$CIE, ||forth_eval_string||
$C$DW$327	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$327, DW_AT_name("input")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("input")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: forth_eval_string             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_eval_string||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/forthwith.c",line 138,column 3,is_stmt,isa 0
        FILL      &r14, 4               ; [ALU_PRU] |138| 
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$326, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$326, DW_AT_TI_end_line(0x8b)
	.dwattr $C$DW$326, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$326

	.sect	".text:forth_eval"
	.clink
	.global	||forth_eval||

$C$DW$329	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$329, DW_AT_name("forth_eval")
	.dwattr $C$DW$329, DW_AT_low_pc(||forth_eval||)
	.dwattr $C$DW$329, DW_AT_high_pc(0x00)
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("forth_eval")
	.dwattr $C$DW$329, DW_AT_external
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$329, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$329, DW_AT_TI_begin_line(0x75)
	.dwattr $C$DW$329, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$329, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$329, DW_AT_decl_line(0x75)
	.dwattr $C$DW$329, DW_AT_decl_column(0x05)
	.dwattr $C$DW$329, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/forthwith.c",line 117,column 33,is_stmt,address ||forth_eval||,isa 0

	.dwfde $C$DW$CIE, ||forth_eval||
$C$DW$330	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$330, DW_AT_name("instr")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("instr")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: forth_eval                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Auto,  0 SOE     *
;***************************************************************

||forth_eval||:
;* --------------------------------------------------------------------------*
$C$DW$331	.dwtag  DW_TAG_variable
	.dwattr $C$DW$331, DW_AT_name("innerloop")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("innerloop")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_breg8 0]

;* r17_0 assigned to $O$C1
;* r0_0  assigned to $O$v1
	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x08          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 8
	.dwpsn	file "src/forthwith.c",line 119,column 12,is_stmt,isa 0
        LDI       r0, ||xt_execs||      ; [ALU_PRU] |119| xt_execs
	.dwpsn	file "src/forthwith.c",line 124,column 3,is_stmt,isa 0
        ZERO      &r17, 4               ; [ALU_PRU] |124| $O$C1
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/forthwith.c",line 119,column 12,is_stmt,isa 0
        SBBO      &r0, r2, 0, 4         ; [ALU_PRU] |119| innerloop
        LDI       r0, ||xt_quits||      ; [ALU_PRU] |119| xt_quits
        SBBO      &r0, r2, 4, 4         ; [ALU_PRU] |119| innerloop
	.dwpsn	file "src/forthwith.c",line 124,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |124| ctx
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |124| $O$v1
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |124| $O$v1
        SBBO      &r17, r1, 0, 4        ; [ALU_PRU] |124| $O$C1
	.dwpsn	file "src/forthwith.c",line 125,column 3,is_stmt,isa 0
        LBBO      &r15, r0, 0, 4        ; [ALU_PRU] |125| $O$v1
        ADD       r1, r2, 0             ; [ALU_PRU] |125| innerloop,innerloop
        SBBO      &r1, r15, 8, 4        ; [ALU_PRU] |125| 
	.dwpsn	file "src/forthwith.c",line 126,column 3,is_stmt,isa 0
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |126| $O$v1
        SBBO      &r17, r0, 4, 4        ; [ALU_PRU] |126| $O$C1
	.dwpsn	file "src/forthwith.c",line 128,column 3,is_stmt,isa 0
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("forth_push")
	.dwattr $C$DW$332, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |128| forth_push
	.dwpsn	file "src/forthwith.c",line 130,column 3,is_stmt,isa 0
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("forth_exec")
	.dwattr $C$DW$333, DW_AT_TI_call

        JAL       r3.w2, ||forth_exec|| ; [ALU_PRU] |130| forth_exec
        NOP                             ; [ALU_PRU] 
        LDI       r0.w0, ||ctx_psp||
        SBBO      &r0.w0, r16, 0, 4
        MOV       r14, r17              ; [ALU_PRU] $O$C1
        ADD       r2, r2, 0x08          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$329, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$329, DW_AT_TI_end_line(0x86)
	.dwattr $C$DW$329, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$329

	.sect	".text:forth_errno"
	.clink
	.global	||forth_errno||

$C$DW$335	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$335, DW_AT_name("forth_errno")
	.dwattr $C$DW$335, DW_AT_low_pc(||forth_errno||)
	.dwattr $C$DW$335, DW_AT_high_pc(0x00)
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("forth_errno")
	.dwattr $C$DW$335, DW_AT_external
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$335, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$335, DW_AT_TI_begin_line(0x58)
	.dwattr $C$DW$335, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$335, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$335, DW_AT_decl_line(0x58)
	.dwattr $C$DW$335, DW_AT_decl_column(0x09)
	.dwattr $C$DW$335, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/forthwith.c",line 88,column 23,is_stmt,address ||forth_errno||,isa 0

	.dwfde $C$DW$CIE, ||forth_errno||

;***************************************************************
;* FNAME: forth_errno                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_errno||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/forthwith.c",line 89,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |89| ctx
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |89| 
        LBBO      &r0, r0, 4, 4         ; [ALU_PRU] |89| 
        LBBO      &r14, r0, 4, 4        ; [ALU_PRU] |89| 
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$335, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$335, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$335, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$335

	.sect	".text:forth_count"
	.clink
	.global	||forth_count||

$C$DW$337	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$337, DW_AT_name("forth_count")
	.dwattr $C$DW$337, DW_AT_low_pc(||forth_count||)
	.dwattr $C$DW$337, DW_AT_high_pc(0x00)
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("forth_count")
	.dwattr $C$DW$337, DW_AT_external
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$337, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$337, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$337, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$337, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$337, DW_AT_decl_line(0x54)
	.dwattr $C$DW$337, DW_AT_decl_column(0x09)
	.dwattr $C$DW$337, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/forthwith.c",line 84,column 23,is_stmt,address ||forth_count||,isa 0

	.dwfde $C$DW$CIE, ||forth_count||

;***************************************************************
;* FNAME: forth_count                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_count||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to $O$C16
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/forthwith.c",line 85,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |85| ctx
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |85| 
        LBBO      &r0, r0, 8, 4         ; [ALU_PRU] |85| $O$C16
        LBBO      &r1, r0, 4, 4         ; [ALU_PRU] |85| $O$C16
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |85| $O$C16
        SUB       r0, r0, r1            ; [ALU_PRU] |85| 
        LSR       r14, r0, 0x02         ; [ALU_PRU] |85| 
        QBBC      ||$C$L34||, r14, 0x1d ; [ALU_PRU] |85| 
;* --------------------------------------------------------------------------*
        FILL      &r0, 4                ; [ALU_PRU] |85| 
        LSL       r0, r0, 0x1e          ; [ALU_PRU] |85| 
        OR        r14, r14, r0          ; [ALU_PRU] |85| 
;* --------------------------------------------------------------------------*
||$C$L34||:    
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$337, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$337, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$337, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$337

	.sect	".text:forth_clear"
	.clink
	.global	||forth_clear||

$C$DW$339	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$339, DW_AT_name("forth_clear")
	.dwattr $C$DW$339, DW_AT_low_pc(||forth_clear||)
	.dwattr $C$DW$339, DW_AT_high_pc(0x00)
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("forth_clear")
	.dwattr $C$DW$339, DW_AT_external
	.dwattr $C$DW$339, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$339, DW_AT_TI_begin_line(0x5c)
	.dwattr $C$DW$339, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$339, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$339, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$339, DW_AT_decl_column(0x06)
	.dwattr $C$DW$339, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/forthwith.c",line 92,column 20,is_stmt,address ||forth_clear||,isa 0

	.dwfde $C$DW$CIE, ||forth_clear||

;***************************************************************
;* FNAME: forth_clear                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_clear||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/forthwith.c",line 93,column 3,is_stmt,isa 0
        LDI       r1, ||ctx||           ; [ALU_PRU] |93| ctx
        LDI       r0, 0x0000            ; [ALU_PRU] |93| 
        LBBO      &r1, r1, 0, 4         ; [ALU_PRU] |93| 
        LBBO      &r1, r1, 4, 4         ; [ALU_PRU] |93| 
        SBBO      &r0, r1, 4, 4         ; [ALU_PRU] |93| 
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$339, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$339, DW_AT_TI_end_line(0x5e)
	.dwattr $C$DW$339, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$339

	.sect	".text:alloc_dict"
	.clink
	.global	||alloc_dict||

$C$DW$341	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$341, DW_AT_name("alloc_dict")
	.dwattr $C$DW$341, DW_AT_low_pc(||alloc_dict||)
	.dwattr $C$DW$341, DW_AT_high_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("alloc_dict")
	.dwattr $C$DW$341, DW_AT_external
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$341, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$341, DW_AT_TI_begin_line(0x12)
	.dwattr $C$DW$341, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$341, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$341, DW_AT_decl_line(0x12)
	.dwattr $C$DW$341, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$341, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/dict.c",line 18,column 23,is_stmt,address ||alloc_dict||,isa 0

	.dwfde $C$DW$CIE, ||alloc_dict||

;***************************************************************
;* FNAME: alloc_dict                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||alloc_dict||:
;* --------------------------------------------------------------------------*
;* r1_0  assigned to $O$v1
;* r14_0 assigned to curr_dict
$C$DW$342	.dwtag  DW_TAG_variable
	.dwattr $C$DW$342, DW_AT_name("curr_dict")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("curr_dict")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x38]

;* r0_0  assigned to next_dict
$C$DW$343	.dwtag  DW_TAG_variable
	.dwattr $C$DW$343, DW_AT_name("next_dict")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("next_dict")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/dict.c",line 20,column 22,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |20| ctx
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |20| $O$v1
        LBBO      &r0, r1, 20, 4        ; [ALU_PRU] |20| $O$v1
        LBBO      &r14, r0, 0, 4        ; [ALU_PRU] |20| curr_dict
	.dwpsn	file "src/dict.c",line 21,column 22,is_stmt,isa 0
        ADD       r0, r14, 0x0e         ; [ALU_PRU] |21| next_dict,curr_dict
	.dwpsn	file "src/dict.c",line 24,column 3,is_stmt,isa 0
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |24| next_dict,curr_dict
	.dwpsn	file "src/dict.c",line 25,column 3,is_stmt,isa 0
        LBBO      &r1, r1, 20, 4        ; [ALU_PRU] |25| $O$v1
        SBBO      &r0, r1, 0, 4         ; [ALU_PRU] |25| next_dict
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$341, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$341, DW_AT_TI_end_line(0x1c)
	.dwattr $C$DW$341, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$341

	.sect	".text:alloc_string"
	.clink
	.global	||alloc_string||

$C$DW$345	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$345, DW_AT_name("alloc_string")
	.dwattr $C$DW$345, DW_AT_low_pc(||alloc_string||)
	.dwattr $C$DW$345, DW_AT_high_pc(0x00)
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("alloc_string")
	.dwattr $C$DW$345, DW_AT_external
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$345, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$345, DW_AT_TI_begin_line(0x1f)
	.dwattr $C$DW$345, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$345, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$345, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$345, DW_AT_decl_column(0x07)
	.dwattr $C$DW$345, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/dict.c",line 31,column 33,is_stmt,address ||alloc_string||,isa 0

	.dwfde $C$DW$CIE, ||alloc_string||
$C$DW$346	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$346, DW_AT_name("len")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: alloc_string                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||alloc_string||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to $O$C16
;* r1_0  assigned to $O$C17
;* r0_0  assigned to len
$C$DW$347	.dwtag  DW_TAG_variable
	.dwattr $C$DW$347, DW_AT_name("len")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg0]

;* r14_0 assigned to curr_string
$C$DW$348	.dwtag  DW_TAG_variable
	.dwattr $C$DW$348, DW_AT_name("curr_string")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("curr_string")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x38]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/dict.c",line 33,column 21,is_stmt,isa 0
        LDI       r1, ||ctx||           ; [ALU_PRU] |33| ctx
	.dwpsn	file "src/dict.c",line 31,column 33,is_stmt,isa 0
        MOV       r0.b0, r14.b0         ; [ALU_PRU] |31| len
	.dwpsn	file "src/dict.c",line 33,column 21,is_stmt,isa 0
        LBBO      &r1, r1, 0, 4         ; [ALU_PRU] |33| 
        LBBO      &r1, r1, 24, 4        ; [ALU_PRU] |33| $O$C17
        LBBO      &r14, r1, 0, 4        ; [ALU_PRU] |33| curr_string,$O$C17
	.dwpsn	file "src/dict.c",line 37,column 3,is_stmt,isa 0
        ADD       r0, r14, r0.b0        ; [ALU_PRU] |37| $O$C16,curr_string,len
        ADD       r15, r0, 0x01         ; [ALU_PRU] |37| $O$C16
        SBBO      &r15, r1, 0, 4        ; [ALU_PRU] |37| $O$C17
	.dwpsn	file "src/dict.c",line 38,column 3,is_stmt,isa 0
        LDI       r1.b0, 0x00           ; [ALU_PRU] |38| 
        SBBO      &r1.b0, r0, 0, 1      ; [ALU_PRU] |38| $O$C16
$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$345, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$345, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$345, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$345

	.sect	".text:dict_create"
	.clink
	.global	||dict_create||

$C$DW$350	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$350, DW_AT_name("dict_create")
	.dwattr $C$DW$350, DW_AT_low_pc(||dict_create||)
	.dwattr $C$DW$350, DW_AT_high_pc(0x00)
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("dict_create")
	.dwattr $C$DW$350, DW_AT_external
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$350, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$350, DW_AT_TI_begin_line(0x2c)
	.dwattr $C$DW$350, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$350, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$350, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$350, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$350, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/dict.c",line 44,column 77,is_stmt,address ||dict_create||,isa 0

	.dwfde $C$DW$CIE, ||dict_create||
$C$DW$351	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$351, DW_AT_name("mask")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x38]

$C$DW$352	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$352, DW_AT_name("len")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x39]

$C$DW$353	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$353, DW_AT_name("name")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$354	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$354, DW_AT_name("body")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("body")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x40]


;***************************************************************
;* FNAME: dict_create                   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  6 SOE     *
;***************************************************************

||dict_create||:
;* --------------------------------------------------------------------------*
;* r15_0 assigned to mask
$C$DW$355	.dwtag  DW_TAG_variable
	.dwattr $C$DW$355, DW_AT_name("mask")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x3c]

;* r18_0 assigned to len
$C$DW$356	.dwtag  DW_TAG_variable
	.dwattr $C$DW$356, DW_AT_name("len")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x48]

;* r17_0 assigned to name
$C$DW$357	.dwtag  DW_TAG_variable
	.dwattr $C$DW$357, DW_AT_name("name")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x44]

;* r16_0 assigned to body
$C$DW$358	.dwtag  DW_TAG_variable
	.dwattr $C$DW$358, DW_AT_name("body")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("body")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x40]

;* r4_0  assigned to entry
$C$DW$359	.dwtag  DW_TAG_variable
	.dwattr $C$DW$359, DW_AT_name("entry")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("entry")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, 0
        MOV       r17, r15              ; [ALU_PRU] |44| name
        SUB       r2, r2, 0x06          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 6
        MOV       r18.b0, r14.b1        ; [ALU_PRU] |44| len
        MOV       r15.b0, r14.b0        ; [ALU_PRU] |44| mask
        SBBO      &r3.b2, r2, 0, 6      ; [ALU_PRU] 
	.dwcfi	save_reg_to_mem, 14, -6
	.dwcfi	save_reg_to_mem, 15, -5
	.dwcfi	save_reg_to_mem, 16, -4
	.dwcfi	save_reg_to_mem, 17, -3
	.dwcfi	save_reg_to_mem, 18, -2
	.dwcfi	save_reg_to_mem, 19, -1
	.dwpsn	file "src/dict.c",line 46,column 18,is_stmt,isa 0
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("alloc_dict")
	.dwattr $C$DW$360, DW_AT_TI_call

        JAL       r3.w2, ||alloc_dict|| ; [ALU_PRU] |46| alloc_dict
        MOV       r4, r14               ; [ALU_PRU] |46| entry
	.dwpsn	file "src/dict.c",line 51,column 3,is_stmt,isa 0
        MOV       r14.b0, r18.b0        ; [ALU_PRU] |51| len
	.dwpsn	file "src/dict.c",line 48,column 3,is_stmt,isa 0
        SBBO      &r16, r4, 4, 4        ; [ALU_PRU] |48| entry,body
	.dwpsn	file "src/dict.c",line 49,column 3,is_stmt,isa 0
        SBBO      &r15.b0, r4, 8, 1     ; [ALU_PRU] |49| entry,mask
	.dwpsn	file "src/dict.c",line 50,column 3,is_stmt,isa 0
        SBBO      &r18.b0, r4, 9, 1     ; [ALU_PRU] |50| entry,len
	.dwpsn	file "src/dict.c",line 51,column 3,is_stmt,isa 0
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("alloc_string")
	.dwattr $C$DW$361, DW_AT_TI_call

        JAL       r3.w2, ||alloc_string|| ; [ALU_PRU] |51| alloc_string
	.dwpsn	file "src/dict.c",line 53,column 3,is_stmt,isa 0
        MOV       r16.b0, r18.b0        ; [ALU_PRU] |53| len
	.dwpsn	file "src/dict.c",line 51,column 3,is_stmt,isa 0
        SBBO      &r14, r4, 10, 4       ; [ALU_PRU] |51| entry
	.dwpsn	file "src/dict.c",line 53,column 3,is_stmt,isa 0
        MOV       r15, r17              ; [ALU_PRU] |53| name
        LBBO      &r14, r4, 10, 4       ; [ALU_PRU] |53| entry
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("memcpy")
	.dwattr $C$DW$362, DW_AT_TI_call

        JAL       r3.w2, ||memcpy||     ; [ALU_PRU] |53| memcpy
	.dwpsn	file "src/dict.c",line 55,column 3,is_stmt,isa 0
        MOV       r14, r4               ; [ALU_PRU] |55| entry
        LBBO      &r3.b2, r2, 0, 6      ; [ALU_PRU] 
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
	.dwcfi	restore_reg, 16
	.dwcfi	restore_reg, 17
	.dwcfi	restore_reg, 18
	.dwcfi	restore_reg, 19
        ADD       r2, r2, 0x06          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$350, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$350, DW_AT_TI_end_line(0x38)
	.dwattr $C$DW$350, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$350

	.sect	".text:forth_bootstrap"
	.clink
	.global	||forth_bootstrap||

$C$DW$364	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$364, DW_AT_name("forth_bootstrap")
	.dwattr $C$DW$364, DW_AT_low_pc(||forth_bootstrap||)
	.dwattr $C$DW$364, DW_AT_high_pc(0x00)
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("forth_bootstrap")
	.dwattr $C$DW$364, DW_AT_external
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$364, DW_AT_TI_begin_file("src/forthwith.c")
	.dwattr $C$DW$364, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$364, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$364, DW_AT_decl_file("src/forthwith.c")
	.dwattr $C$DW$364, DW_AT_decl_line(0x61)
	.dwattr $C$DW$364, DW_AT_decl_column(0x05)
	.dwattr $C$DW$364, DW_AT_TI_max_frame_size(0x15a)
	.dwpsn	file "src/forthwith.c",line 97,column 23,is_stmt,address ||forth_bootstrap||,isa 0

	.dwfde $C$DW$CIE, ||forth_bootstrap||

;***************************************************************
;* FNAME: forth_bootstrap               FR SIZE: 346           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           304 Auto, 42 SOE     *
;***************************************************************

||forth_bootstrap||:
;* --------------------------------------------------------------------------*
$C$DW$365	.dwtag  DW_TAG_variable
	.dwattr $C$DW$365, DW_AT_name("fw_itpnum")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("fw_itpnum")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_breg8 0]

$C$DW$366	.dwtag  DW_TAG_variable
	.dwattr $C$DW$366, DW_AT_name("fw_itpnext")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("fw_itpnext")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_breg8 80]

$C$DW$367	.dwtag  DW_TAG_variable
	.dwattr $C$DW$367, DW_AT_name("fw_semicolon")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("fw_semicolon")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_breg8 156]

$C$DW$368	.dwtag  DW_TAG_variable
	.dwattr $C$DW$368, DW_AT_name("fw_interpret")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("fw_interpret")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_breg8 204]

$C$DW$369	.dwtag  DW_TAG_variable
	.dwattr $C$DW$369, DW_AT_name("fw_colon")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("fw_colon")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_breg8 248]

$C$DW$370	.dwtag  DW_TAG_variable
	.dwattr $C$DW$370, DW_AT_name("fw_immed")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("fw_immed")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_breg8 288]

;* r16_0 assigned to $O$C1
;* r12_0 assigned to $O$C2
;* r8_0  assigned to $O$C3
;* r7_0  assigned to $O$C4
;* r4_0  assigned to $O$C5
;* r9_0  assigned to $O$C6
;* r13_0 assigned to $O$C7
;* r11_0 assigned to $O$C8
;* r4_0  assigned to $O$C9
;* r0_0  assigned to $O$C10
;* r10_0 assigned to $O$C11
;* r6_0  assigned to $O$C12
;* r5_0  assigned to $O$C13
;* r0_0  assigned to $O$C14
;* r4_0  assigned to $O$C15
;* r16_0 assigned to $O$C16
;* r5_0  assigned to $O$C17
;* r16_0 assigned to $O$C18
;* r0_0  assigned to $O$C19
;* r16_0 assigned to $O$C20
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/xmacros.inner.h",line 25,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||docolon||) ; [ALU_PRU] |25| docolon
        SUB       r2, r2, 0xff          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 255
        LDI       r14.b0, 0x09          ; [ALU_PRU] |25| 
        LDI       r14.b1, 0x07          ; [ALU_PRU] |25| 
        LDI32     r15, $C$SL1           ; [ALU_PRU] |25| 
        MOV       r16, r0.w0            ; [ALU_PRU] |25| 
        SBBO      &r3.b2, r2, 213, 42   ; [ALU_PRU] 
	.dwcfi	save_reg_to_mem, 14, -42
	.dwcfi	save_reg_to_mem, 15, -41
	.dwcfi	save_reg_to_mem, 16, -40
	.dwcfi	save_reg_to_mem, 17, -39
	.dwcfi	save_reg_to_mem, 18, -38
	.dwcfi	save_reg_to_mem, 19, -37
	.dwcfi	save_reg_to_mem, 20, -36
	.dwcfi	save_reg_to_mem, 21, -35
	.dwcfi	save_reg_to_mem, 22, -34
	.dwcfi	save_reg_to_mem, 23, -33
	.dwcfi	save_reg_to_mem, 24, -32
	.dwcfi	save_reg_to_mem, 25, -31
	.dwcfi	save_reg_to_mem, 26, -30
	.dwcfi	save_reg_to_mem, 27, -29
	.dwcfi	save_reg_to_mem, 28, -28
	.dwcfi	save_reg_to_mem, 29, -27
	.dwcfi	save_reg_to_mem, 30, -26
	.dwcfi	save_reg_to_mem, 31, -25
	.dwcfi	save_reg_to_mem, 32, -24
	.dwcfi	save_reg_to_mem, 33, -23
	.dwcfi	save_reg_to_mem, 34, -22
	.dwcfi	save_reg_to_mem, 35, -21
	.dwcfi	save_reg_to_mem, 36, -20
	.dwcfi	save_reg_to_mem, 37, -19
	.dwcfi	save_reg_to_mem, 38, -18
	.dwcfi	save_reg_to_mem, 39, -17
	.dwcfi	save_reg_to_mem, 40, -16
	.dwcfi	save_reg_to_mem, 41, -15
	.dwcfi	save_reg_to_mem, 42, -14
	.dwcfi	save_reg_to_mem, 43, -13
	.dwcfi	save_reg_to_mem, 44, -12
	.dwcfi	save_reg_to_mem, 45, -11
	.dwcfi	save_reg_to_mem, 46, -10
	.dwcfi	save_reg_to_mem, 47, -9
	.dwcfi	save_reg_to_mem, 48, -8
	.dwcfi	save_reg_to_mem, 49, -7
	.dwcfi	save_reg_to_mem, 50, -6
	.dwcfi	save_reg_to_mem, 51, -5
	.dwcfi	save_reg_to_mem, 52, -4
	.dwcfi	save_reg_to_mem, 53, -3
	.dwcfi	save_reg_to_mem, 54, -2
	.dwcfi	save_reg_to_mem, 55, -1
        SUB       r2, r2, 0x5b          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 346
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("dict_create")
	.dwattr $C$DW$371, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |25| dict_create
	.dwpsn	file "src/xmacros.inner.h",line 35,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||semi||) ; [ALU_PRU] |35| semi
        LDI       r14.b0, 0x01          ; [ALU_PRU] |35| 
        LDI       r14.b1, 0x04          ; [ALU_PRU] |35| 
        LDI32     r15, $C$SL2           ; [ALU_PRU] |35| 
        MOV       r16, r0.w0            ; [ALU_PRU] |35| 
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_name("dict_create")
	.dwattr $C$DW$372, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |35| dict_create
	.dwpsn	file "src/xmacros.inner.h",line 62,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||execs||) ; [ALU_PRU] |62| execs
        LDI       r14.b0, 0x01          ; [ALU_PRU] |62| 
        LDI       r14.b1, 0x05          ; [ALU_PRU] |62| 
        LDI32     r15, $C$SL3           ; [ALU_PRU] |62| 
        MOV       r16, r0.w0            ; [ALU_PRU] |62| 
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_name("dict_create")
	.dwattr $C$DW$373, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |62| dict_create
	.dwpsn	file "src/xmacros.inner.h",line 70,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||runs||) ; [ALU_PRU] |70| runs
        LDI       r14.b0, 0x01          ; [ALU_PRU] |70| 
        LDI       r14.b1, 0x04          ; [ALU_PRU] |70| 
        LDI32     r15, $C$SL4           ; [ALU_PRU] |70| 
        MOV       r16, r0.w0            ; [ALU_PRU] |70| 
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_name("dict_create")
	.dwattr $C$DW$374, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |70| dict_create
	.dwpsn	file "src/xmacros.inner.h",line 78,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||quits||) ; [ALU_PRU] |78| quits
        LDI       r14.b0, 0x01          ; [ALU_PRU] |78| 
        LDI       r14.b1, 0x05          ; [ALU_PRU] |78| 
        LDI32     r15, $C$SL5           ; [ALU_PRU] |78| 
        MOV       r16, r0.w0            ; [ALU_PRU] |78| 
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_name("dict_create")
	.dwattr $C$DW$375, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |78| dict_create
	.dwpsn	file "src/xmacros.inner.h",line 84,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||call00||) ; [ALU_PRU] |84| call00
        LDI       r14.b0, 0x01          ; [ALU_PRU] |84| 
        LDI       r14.b1, 0x06          ; [ALU_PRU] |84| 
        LDI32     r15, $C$SL6           ; [ALU_PRU] |84| 
        MOV       r16, r0.w0            ; [ALU_PRU] |84| 
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("dict_create")
	.dwattr $C$DW$376, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |84| dict_create
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/xmacros.core.h",line 3,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |3| 
        LDI       r0.w0, $CODE(||fetch||) ; [ALU_PRU] |3| fetch
        LDI32     r15, $C$SL7           ; [ALU_PRU] |3| 
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |3| 
        MOV       r16, r0.w0            ; [ALU_PRU] |3| 
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("dict_create")
	.dwattr $C$DW$377, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |3| dict_create
	.dwpsn	file "src/xmacros.core.h",line 11,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |11| 
        LDI       r0.w0, $CODE(||store||) ; [ALU_PRU] |11| store
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |11| 
        LDI32     r15, $C$SL8           ; [ALU_PRU] |11| 
        MOV       r16, r0.w0            ; [ALU_PRU] |11| 
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("dict_create")
	.dwattr $C$DW$378, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |11| dict_create
	.dwpsn	file "src/xmacros.core.h",line 19,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||drop||) ; [ALU_PRU] |19| drop
        LDI       r14.b0, 0x01          ; [ALU_PRU] |19| 
        LDI       r14.b1, 0x04          ; [ALU_PRU] |19| 
        LDI32     r15, $C$SL9           ; [ALU_PRU] |19| 
        MOV       r16, r0.w0            ; [ALU_PRU] |19| 
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("dict_create")
	.dwattr $C$DW$379, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |19| dict_create
	.dwpsn	file "src/xmacros.core.h",line 25,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||dup||) ; [ALU_PRU] |25| dup
        LDI       r14.b0, 0x01          ; [ALU_PRU] |25| 
        LDI       r14.b1, 0x03          ; [ALU_PRU] |25| 
        LDI32     r15, $C$SL10          ; [ALU_PRU] |25| 
        MOV       r16, r0.w0            ; [ALU_PRU] |25| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("dict_create")
	.dwattr $C$DW$380, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |25| dict_create
	.dwpsn	file "src/xmacros.core.h",line 32,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||swap||) ; [ALU_PRU] |32| swap
        LDI       r14.b0, 0x01          ; [ALU_PRU] |32| 
        LDI       r14.b1, 0x04          ; [ALU_PRU] |32| 
        LDI32     r15, $C$SL11          ; [ALU_PRU] |32| 
        MOV       r16, r0.w0            ; [ALU_PRU] |32| 
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("dict_create")
	.dwattr $C$DW$381, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |32| dict_create
	.dwpsn	file "src/xmacros.core.h",line 41,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||rot||) ; [ALU_PRU] |41| rot
        LDI       r14.b0, 0x01          ; [ALU_PRU] |41| 
        LDI       r14.b1, 0x03          ; [ALU_PRU] |41| 
        LDI32     r15, $C$SL12          ; [ALU_PRU] |41| 
        MOV       r16, r0.w0            ; [ALU_PRU] |41| 
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("dict_create")
	.dwattr $C$DW$382, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |41| dict_create
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/xmacros.core.h",line 52,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |52| 
        LDI       r0.w0, $CODE(||sadd||) ; [ALU_PRU] |52| sadd
        LDI32     r15, $C$SL13          ; [ALU_PRU] |52| 
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |52| 
        MOV       r16, r0.w0            ; [ALU_PRU] |52| 
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_name("dict_create")
	.dwattr $C$DW$383, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |52| dict_create
	.dwpsn	file "src/xmacros.core.h",line 59,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |59| 
        LDI       r0.w0, $CODE(||ssub||) ; [ALU_PRU] |59| ssub
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |59| 
        LDI32     r15, $C$SL14          ; [ALU_PRU] |59| 
        MOV       r16, r0.w0            ; [ALU_PRU] |59| 
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_name("dict_create")
	.dwattr $C$DW$384, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |59| dict_create
	.dwpsn	file "src/xmacros.core.h",line 84,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||equals||) ; [ALU_PRU] |84| equals
        LDI       r14.b0, 0x01          ; [ALU_PRU] |84| 
        LDI       r14.b1, 0x03          ; [ALU_PRU] |84| 
        LDI32     r15, $C$SL15          ; [ALU_PRU] |84| 
        MOV       r16, r0.w0            ; [ALU_PRU] |84| 
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_name("dict_create")
	.dwattr $C$DW$385, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |84| dict_create
	.dwpsn	file "src/xmacros.core.h",line 95,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |95| 
        LDI       r0.w0, $CODE(||xor||) ; [ALU_PRU] |95| xor
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |95| 
        LDI32     r15, $C$SL16          ; [ALU_PRU] |95| 
        MOV       r16, r0.w0            ; [ALU_PRU] |95| 
$C$DW$386	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$386, DW_AT_low_pc(0x00)
	.dwattr $C$DW$386, DW_AT_name("dict_create")
	.dwattr $C$DW$386, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |95| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 4,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||lit||) ; [ALU_PRU] |4| lit
        LDI       r14.b0, 0x01          ; [ALU_PRU] |4| 
        LDI       r14.b1, 0x03          ; [ALU_PRU] |4| 
        LDI32     r15, $C$SL17          ; [ALU_PRU] |4| 
        MOV       r16, r0.w0            ; [ALU_PRU] |4| 
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_name("dict_create")
	.dwattr $C$DW$387, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |4| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 15,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |15| 
        LDI       r0.w0, $CODE(||tick||) ; [ALU_PRU] |15| tick
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |15| 
        LDI32     r15, $C$SL18          ; [ALU_PRU] |15| 
        MOV       r16, r0.w0            ; [ALU_PRU] |15| 
$C$DW$388	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$388, DW_AT_low_pc(0x00)
	.dwattr $C$DW$388, DW_AT_name("dict_create")
	.dwattr $C$DW$388, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |15| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 27,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||var_STATE||) ; [ALU_PRU] |27| var_STATE
        LDI       r14.b0, 0x01          ; [ALU_PRU] |27| 
        LDI       r14.b1, 0x05          ; [ALU_PRU] |27| 
        LDI32     r15, $C$SL19          ; [ALU_PRU] |27| 
        MOV       r16, r0.w0            ; [ALU_PRU] |27| 
$C$DW$389	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$389, DW_AT_low_pc(0x00)
	.dwattr $C$DW$389, DW_AT_name("dict_create")
	.dwattr $C$DW$389, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |27| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 28,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||var_HERE||) ; [ALU_PRU] |28| var_HERE
        LDI       r14.b0, 0x01          ; [ALU_PRU] |28| 
        LDI       r14.b1, 0x05          ; [ALU_PRU] |28| 
        LDI32     r15, $C$SL20          ; [ALU_PRU] |28| 
        MOV       r16, r0.w0            ; [ALU_PRU] |28| 
$C$DW$390	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$390, DW_AT_low_pc(0x00)
	.dwattr $C$DW$390, DW_AT_name("dict_create")
	.dwattr $C$DW$390, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |28| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 31,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||create||) ; [ALU_PRU] |31| create
        LDI       r14.b0, 0x01          ; [ALU_PRU] |31| 
        LDI       r14.b1, 0x06          ; [ALU_PRU] |31| 
        LDI32     r15, $C$SL21          ; [ALU_PRU] |31| 
        MOV       r16, r0.w0            ; [ALU_PRU] |31| 
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_name("dict_create")
	.dwattr $C$DW$391, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |31| dict_create
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/xmacros.outer.h",line 32,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |32| 
        LDI       r0.w0, $CODE(||comma||) ; [ALU_PRU] |32| comma
        LDI32     r15, $C$SL22          ; [ALU_PRU] |32| 
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |32| 
        MOV       r16, r0.w0            ; [ALU_PRU] |32| 
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_name("dict_create")
	.dwattr $C$DW$392, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |32| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 33,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |33| 
        LDI       r0.w0, $CODE(||lbrac||) ; [ALU_PRU] |33| lbrac
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |33| 
        LDI32     r15, $C$SL23          ; [ALU_PRU] |33| 
        MOV       r16, r0.w0            ; [ALU_PRU] |33| 
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("dict_create")
	.dwattr $C$DW$393, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |33| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 34,column 1,is_stmt,isa 0
        LDI       r14.b0, 0x01          ; [ALU_PRU] |34| 
        LDI       r0.w0, $CODE(||rbrac||) ; [ALU_PRU] |34| rbrac
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |34| 
        LDI32     r15, $C$SL24          ; [ALU_PRU] |34| 
        MOV       r16, r0.w0            ; [ALU_PRU] |34| 
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("dict_create")
	.dwattr $C$DW$394, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |34| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 35,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||xmask||) ; [ALU_PRU] |35| xmask
        LDI       r14.b0, 0x01          ; [ALU_PRU] |35| 
        LDI       r14.b1, 0x05          ; [ALU_PRU] |35| 
        LDI32     r15, $C$SL25          ; [ALU_PRU] |35| 
        MOV       r16, r0.w0            ; [ALU_PRU] |35| 
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_name("dict_create")
	.dwattr $C$DW$395, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |35| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 37,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||word||) ; [ALU_PRU] |37| word
        LDI       r14.b0, 0x01          ; [ALU_PRU] |37| 
        LDI       r14.b1, 0x04          ; [ALU_PRU] |37| 
        LDI32     r15, $C$SL26          ; [ALU_PRU] |37| 
        MOV       r16, r0.w0            ; [ALU_PRU] |37| 
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_name("dict_create")
	.dwattr $C$DW$396, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |37| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 38,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||number||) ; [ALU_PRU] |38| number
        LDI       r14.b0, 0x01          ; [ALU_PRU] |38| 
        LDI       r14.b1, 0x06          ; [ALU_PRU] |38| 
        LDI32     r15, $C$SL27          ; [ALU_PRU] |38| 
        MOV       r16, r0.w0            ; [ALU_PRU] |38| 
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_name("dict_create")
	.dwattr $C$DW$397, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |38| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 39,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||find||) ; [ALU_PRU] |39| find
        LDI       r14.b0, 0x01          ; [ALU_PRU] |39| 
        LDI       r14.b1, 0x04          ; [ALU_PRU] |39| 
        LDI32     r15, $C$SL28          ; [ALU_PRU] |39| 
        MOV       r16, r0.w0            ; [ALU_PRU] |39| 
$C$DW$398	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$398, DW_AT_low_pc(0x00)
	.dwattr $C$DW$398, DW_AT_name("dict_create")
	.dwattr $C$DW$398, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |39| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 40,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||cfa||) ; [ALU_PRU] |40| cfa
        LDI       r14.b0, 0x01          ; [ALU_PRU] |40| 
        LDI       r14.b1, 0x03          ; [ALU_PRU] |40| 
        LDI32     r15, $C$SL29          ; [ALU_PRU] |40| 
        MOV       r16, r0.w0            ; [ALU_PRU] |40| 
$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_name("dict_create")
	.dwattr $C$DW$399, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |40| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 42,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||emit||) ; [ALU_PRU] |42| emit
        LDI       r14.b0, 0x01          ; [ALU_PRU] |42| 
        LDI       r14.b1, 0x04          ; [ALU_PRU] |42| 
        LDI32     r15, $C$SL30          ; [ALU_PRU] |42| 
        MOV       r16, r0.w0            ; [ALU_PRU] |42| 
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_name("dict_create")
	.dwattr $C$DW$400, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |42| dict_create
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/xmacros.outer.h",line 43,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||ret_||) ; [ALU_PRU] |43| ret_
        LDI       r14.b0, 0x01          ; [ALU_PRU] |43| 
        LDI       r14.b1, 0x03          ; [ALU_PRU] |43| 
        LDI32     r15, $C$SL31          ; [ALU_PRU] |43| 
        MOV       r16, r0.w0            ; [ALU_PRU] |43| 
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_name("dict_create")
	.dwattr $C$DW$401, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |43| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 46,column 1,is_stmt,isa 0
        LDI       r11, ||xt_docolon||   ; [ALU_PRU] |46| $O$C8,xt_docolon
        LDI       r4, ||xt_lit||        ; [ALU_PRU] |46| $O$C15,xt_lit
        LDI       r5, ||xt_xmask||      ; [ALU_PRU] |46| $O$C17,xt_xmask
        LDI       r0, ||$P$T0$1||       ; [ALU_PRU] |46| $P$T0$1
        LDI       r1.w0, 0x0120         ; [ALU_PRU] |46| fw_immed,fw_immed
        LBBO      &r14.b0, r0, 0, 16    ; [ALU_PRU] |46| 
        LDI       r0.w0, 0x0120         ; [ALU_PRU] |46| fw_immed,fw_immed
        SBBO      &r14.b0, r2, r0.w0, 16 ; [ALU_PRU] |46| fw_immed
        LDI       r14.b0, 0x0a          ; [ALU_PRU] |46| 
        LDI       r14.b1, 0x05          ; [ALU_PRU] |46| 
        LDI       r16, ||xt_immed||     ; [ALU_PRU] |46| $O$C20,xt_immed
        LDI32     r15, $C$SL32          ; [ALU_PRU] |46| 
        LBBO      &r0, r11, 0, 4        ; [ALU_PRU] |46| $O$C8
        SBBO      &r0, r2, r1.w0, 4     ; [ALU_PRU] |46| fw_immed
        LDI       r0.w0, 0x0124         ; [ALU_PRU] |46| fw_immed,fw_immed
        SBBO      &r4, r2, r0.w0, 4     ; [ALU_PRU] |46| fw_immed,$O$C15
        LDI       r0.w0, 0x012c         ; [ALU_PRU] |46| fw_immed,fw_immed
        SBBO      &r5, r2, r0.w0, 4     ; [ALU_PRU] |46| fw_immed,$O$C17
        LDI       r0, 0x0120            ; [ALU_PRU] |46| 
        ADD       r0, r2, r0            ; [ALU_PRU] |46| fw_immed
        LBBO      &r17.b0, r0, 0, 16    ; [ALU_PRU] |46| 
        SBBO      &r17.b0, r16, 0, 16   ; [ALU_PRU] |46| 
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_name("dict_create")
	.dwattr $C$DW$402, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |46| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 59,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||branch||) ; [ALU_PRU] |59| branch
        LDI       r14.b0, 0x01          ; [ALU_PRU] |59| 
        LDI       r14.b1, 0x06          ; [ALU_PRU] |59| 
        LDI32     r15, $C$SL33          ; [ALU_PRU] |59| 
        MOV       r16, r0.w0            ; [ALU_PRU] |59| 
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_name("dict_create")
	.dwattr $C$DW$403, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |59| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 68,column 1,is_stmt,isa 0
        LDI       r0.w0, $CODE(||zbranch||) ; [ALU_PRU] |68| zbranch
        LDI       r14.b0, 0x01          ; [ALU_PRU] |68| 
        LDI       r14.b1, 0x07          ; [ALU_PRU] |68| 
        LDI32     r15, $C$SL34          ; [ALU_PRU] |68| 
        MOV       r16, r0.w0            ; [ALU_PRU] |68| 
$C$DW$404	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$404, DW_AT_low_pc(0x00)
	.dwattr $C$DW$404, DW_AT_name("dict_create")
	.dwattr $C$DW$404, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |68| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 86,column 1,is_stmt,isa 0
        LDI       r13, ||xt_word||      ; [ALU_PRU] |86| $O$C7,xt_word
        LDI       r9, ||xt_zbranch||    ; [ALU_PRU] |86| $O$C6,xt_zbranch
        LDI       r10, ||xt_comma||     ; [ALU_PRU] |86| $O$C11,xt_comma
        LDI       r12, ||xt_semi||      ; [ALU_PRU] |86| $O$C2,xt_semi
        LDI       r0, ||$P$T1$2||       ; [ALU_PRU] |86| $P$T1$2
        LDI       r1.w0, 0x0100         ; [ALU_PRU] |86| fw_colon,fw_colon
        LBBO      &r14.b0, r0, 0, 40    ; [ALU_PRU] |86| 
        SBBO      &r14.b0, r2, 248, 40  ; [ALU_PRU] |86| fw_colon
        LDI       r14, ||xt_create||    ; [ALU_PRU] |86| xt_create
        LBBO      &r0, r11, 0, 4        ; [ALU_PRU] |86| $O$C19,$O$C8
        LDI       r16, ||xt_colon||     ; [ALU_PRU] |86| $O$C18,xt_colon
        LDI32     r15, $C$SL35          ; [ALU_PRU] |86| 
        SBBO      &r0, r2, 248, 4       ; [ALU_PRU] |86| fw_colon,$O$C19
        SBBO      &r13, r2, 252, 4      ; [ALU_PRU] |86| fw_colon,$O$C7
        SBBO      &r9, r2, r1.w0, 4     ; [ALU_PRU] |86| fw_colon,$O$C6
        LDI       r1.w0, 0x0108         ; [ALU_PRU] |86| fw_colon,fw_colon
        SBBO      &r14, r2, r1.w0, 4    ; [ALU_PRU] |86| fw_colon
        LDI       r1.w0, 0x010c         ; [ALU_PRU] |86| fw_colon,fw_colon
        LDI       r14.b0, 0x09          ; [ALU_PRU] |86| 
        LDI       r14.b1, 0x01          ; [ALU_PRU] |86| 
        SBBO      &r4, r2, r1.w0, 4     ; [ALU_PRU] |86| fw_colon,$O$C15
        LDI       r1.w0, 0x0110         ; [ALU_PRU] |86| fw_colon,fw_colon
        SBBO      &r0, r2, r1.w0, 4     ; [ALU_PRU] |86| fw_colon,$O$C19
        LDI       r0.w0, 0x0114         ; [ALU_PRU] |86| fw_colon,fw_colon
        LDI       r1, ||xt_rbrac||      ; [ALU_PRU] |86| xt_rbrac
        SBBO      &r10, r2, r0.w0, 4    ; [ALU_PRU] |86| fw_colon,$O$C11
        LDI       r0.w0, 0x0118         ; [ALU_PRU] |86| fw_colon,fw_colon
        SBBO      &r1, r2, r0.w0, 4     ; [ALU_PRU] |86| fw_colon
        LDI       r0.w0, 0x011c         ; [ALU_PRU] |86| fw_colon,fw_colon
        SBBO      &r12, r2, r0.w0, 4    ; [ALU_PRU] |86| fw_colon,$O$C2
        ADD       r0, r2, 248           ; [ALU_PRU] |86| fw_colon,fw_colon
        LBBO      &r17.b0, r0, 0, 40    ; [ALU_PRU] |86| 
        SBBO      &r17.b0, r16, 0, 40   ; [ALU_PRU] |86| 
$C$DW$405	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$405, DW_AT_low_pc(0x00)
	.dwattr $C$DW$405, DW_AT_name("dict_create")
	.dwattr $C$DW$405, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |86| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 98,column 1,is_stmt,isa 0
        LDI       r1, ||$P$T2$3||       ; [ALU_PRU] |98| $P$T2$3
        ADD       r0, r2, 156           ; [ALU_PRU] |98| fw_semicolon,fw_semicolon
        LBBO      &r14.b0, r1, 0, 44    ; [ALU_PRU] |98| 
        SBBO      &r14.b0, r0, 0, 44    ; [ALU_PRU] |98| 
        LDI       r14.b0, 0x0b          ; [ALU_PRU] |98| 
        LDI       r14.b1, 0x01          ; [ALU_PRU] |98| 
        LBBO      &r1.b0, r1, 44, 4     ; [ALU_PRU] |98| 
        LDI       r16, ||xt_semicolon|| ; [ALU_PRU] |98| $O$C16,xt_semicolon
        LDI32     r15, $C$SL36          ; [ALU_PRU] |98| 
        SBBO      &r1.b0, r0, 44, 4     ; [ALU_PRU] |98| 
        LBBO      &r0, r11, 0, 4        ; [ALU_PRU] |98| $O$C8
        SBBO      &r0, r2, 156, 4       ; [ALU_PRU] |98| fw_semicolon
        LDI       r0, ||xt_lbrac||      ; [ALU_PRU] |98| xt_lbrac
        SBBO      &r4, r2, 160, 4       ; [ALU_PRU] |98| fw_semicolon,$O$C15
        SBBO      &r12, r2, 164, 4      ; [ALU_PRU] |98| fw_semicolon,$O$C2
        SBBO      &r10, r2, 168, 4      ; [ALU_PRU] |98| fw_semicolon,$O$C11
        SBBO      &r4, r2, 172, 4       ; [ALU_PRU] |98| fw_semicolon,$O$C15
        SBBO      &r5, r2, 180, 4       ; [ALU_PRU] |98| fw_semicolon,$O$C17
        SBBO      &r4, r2, 184, 4       ; [ALU_PRU] |98| fw_semicolon,$O$C15
        SBBO      &r5, r2, 192, 4       ; [ALU_PRU] |98| fw_semicolon,$O$C17
        SBBO      &r0, r2, 196, 4       ; [ALU_PRU] |98| fw_semicolon
        ADD       r0, r2, 156           ; [ALU_PRU] |98| fw_semicolon,fw_semicolon
        SBBO      &r12, r2, 200, 4      ; [ALU_PRU] |98| fw_semicolon,$O$C2
        LBBO      &r17.b0, r0, 0, 44    ; [ALU_PRU] |98| 
        SBBO      &r17.b0, r16, 0, 44   ; [ALU_PRU] |98| 
        LBBO      &r0.b0, r0, 44, 4     ; [ALU_PRU] |98| 
        SBBO      &r0.b0, r16, 44, 4    ; [ALU_PRU] |98| 
$C$DW$406	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$406, DW_AT_low_pc(0x00)
	.dwattr $C$DW$406, DW_AT_name("dict_create")
	.dwattr $C$DW$406, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |98| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 167,column 1,is_stmt,isa 0
        LDI       r8, ||xt_drop||       ; [ALU_PRU] |167| $O$C3,xt_drop
        LDI       r7, ||xt_branch||     ; [ALU_PRU] |167| $O$C4,xt_branch
        LDI       r6, ||xt_fetch||      ; [ALU_PRU] |167| $O$C12,xt_fetch
        LDI       r5, ||xt_var_STATE||  ; [ALU_PRU] |167| $O$C13,xt_var_STATE
        LDI       r1, ||$P$T3$4||       ; [ALU_PRU] |167| $P$T3$4
        ADD       r0, r2, 0             ; [ALU_PRU] |167| fw_itpnum,fw_itpnum
        LBBO      &r14.b0, r1, 0, 44    ; [ALU_PRU] |167| 
        SBBO      &r14.b0, r0, 0, 44    ; [ALU_PRU] |167| 
        LBBO      &r14.b0, r1, 44, 36   ; [ALU_PRU] |167| 
        SBBO      &r14.b0, r0, 44, 36   ; [ALU_PRU] |167| 
        LBBO      &r0, r11, 0, 4        ; [ALU_PRU] |167| $O$C8
        SBBO      &r0, r2, 0, 4         ; [ALU_PRU] |167| fw_itpnum
        LDI       r0, ||xt_number||     ; [ALU_PRU] |167| xt_number
        SBBO      &r0, r2, 4, 4         ; [ALU_PRU] |167| fw_itpnum
        LDI       r0, ||xt_ret_||       ; [ALU_PRU] |167| xt_ret_
        SBBO      &r9, r2, 8, 4         ; [ALU_PRU] |167| fw_itpnum,$O$C6
        SBBO      &r4, r2, 16, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C15
        SBBO      &r0, r2, 24, 4        ; [ALU_PRU] |167| fw_itpnum
        LDI       r0, ||xt_tick||       ; [ALU_PRU] |167| $O$C14,xt_tick
        LDI       r4, ||xt_itpnum||     ; [ALU_PRU] |167| $O$C9,xt_itpnum
        SBBO      &r8, r2, 28, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C3
        SBBO      &r7, r2, 32, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C4
        SBBO      &r5, r2, 40, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C13
        SBBO      &r6, r2, 44, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C12
        SBBO      &r9, r2, 48, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C6
        SBBO      &r0, r2, 56, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C14
        SBBO      &r0, r2, 60, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C14
        ADD       r0, r2, 0             ; [ALU_PRU] |167| fw_itpnum,fw_itpnum
        SBBO      &r10, r2, 64, 4       ; [ALU_PRU] |167| fw_itpnum,$O$C11
        SBBO      &r10, r2, 68, 4       ; [ALU_PRU] |167| fw_itpnum,$O$C11
        SBBO      &r8, r2, 72, 4        ; [ALU_PRU] |167| fw_itpnum,$O$C3
        SBBO      &r12, r2, 76, 4       ; [ALU_PRU] |167| fw_itpnum,$O$C2
        LBBO      &r14.b0, r0, 0, 44    ; [ALU_PRU] |167| 
        SBBO      &r14.b0, r4, 0, 44    ; [ALU_PRU] |167| 
        LBBO      &r14.b0, r0, 44, 36   ; [ALU_PRU] |167| 
        SBBO      &r14.b0, r4, 44, 36   ; [ALU_PRU] |167| 
        LDI       r14.b0, 0x09          ; [ALU_PRU] |167| 
        LDI       r14.b1, 0x06          ; [ALU_PRU] |167| 
        LDI32     r15, $C$SL37          ; [ALU_PRU] |167| 
        MOV       r16, r4               ; [ALU_PRU] |167| $O$C9
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("dict_create")
	.dwattr $C$DW$407, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |167| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 195,column 1,is_stmt,isa 0
        LDI       r1, ||$P$T4$5||       ; [ALU_PRU] |195| $P$T4$5
        ADD       r0, r2, 80            ; [ALU_PRU] |195| fw_itpnext,fw_itpnext
        LBBO      &r14.b0, r1, 0, 44    ; [ALU_PRU] |195| 
        SBBO      &r14.b0, r0, 0, 44    ; [ALU_PRU] |195| 
        LBBO      &r14.b0, r1, 44, 32   ; [ALU_PRU] |195| 
        SBBO      &r14.b0, r0, 44, 32   ; [ALU_PRU] |195| 
        LBBO      &r0, r11, 0, 4        ; [ALU_PRU] |195| $O$C8
        SBBO      &r0, r2, 80, 4        ; [ALU_PRU] |195| fw_itpnext
        LDI       r0, ||xt_find||       ; [ALU_PRU] |195| xt_find
        SBBO      &r0, r2, 84, 4        ; [ALU_PRU] |195| fw_itpnext
        LDI       r0, ||xt_xor||        ; [ALU_PRU] |195| xt_xor
        SBBO      &r9, r2, 88, 4        ; [ALU_PRU] |195| fw_itpnext,$O$C6
        SBBO      &r5, r2, 96, 4        ; [ALU_PRU] |195| fw_itpnext,$O$C13
        SBBO      &r6, r2, 100, 4       ; [ALU_PRU] |195| fw_itpnext,$O$C12
        SBBO      &r0, r2, 104, 4       ; [ALU_PRU] |195| fw_itpnext
        LDI       r0, ||xt_cfa||        ; [ALU_PRU] |195| $O$C10,xt_cfa
        SBBO      &r9, r2, 108, 4       ; [ALU_PRU] |195| fw_itpnext,$O$C6
        SBBO      &r0, r2, 116, 4       ; [ALU_PRU] |195| fw_itpnext,$O$C10
        SBBO      &r10, r2, 120, 4      ; [ALU_PRU] |195| fw_itpnext,$O$C11
        SBBO      &r7, r2, 124, 4       ; [ALU_PRU] |195| fw_itpnext,$O$C4
        SBBO      &r0, r2, 132, 4       ; [ALU_PRU] |195| fw_itpnext,$O$C10
        LDI       r0, ||xt_runs||       ; [ALU_PRU] |195| xt_runs
        SBBO      &r0, r2, 136, 4       ; [ALU_PRU] |195| fw_itpnext
        ADD       r0, r2, 80            ; [ALU_PRU] |195| fw_itpnext,fw_itpnext
        SBBO      &r7, r2, 140, 4       ; [ALU_PRU] |195| fw_itpnext,$O$C4
        SBBO      &r4, r2, 148, 4       ; [ALU_PRU] |195| fw_itpnext,$O$C9
        LDI       r4, ||xt_itpnext||    ; [ALU_PRU] |195| $O$C5,xt_itpnext
        SBBO      &r12, r2, 152, 4      ; [ALU_PRU] |195| fw_itpnext,$O$C2
        LBBO      &r14.b0, r0, 0, 44    ; [ALU_PRU] |195| 
        SBBO      &r14.b0, r4, 0, 44    ; [ALU_PRU] |195| 
        LBBO      &r14.b0, r0, 44, 32   ; [ALU_PRU] |195| 
        SBBO      &r14.b0, r4, 44, 32   ; [ALU_PRU] |195| 
        LDI       r14.b0, 0x09          ; [ALU_PRU] |195| 
        LDI       r14.b1, 0x07          ; [ALU_PRU] |195| 
        LDI32     r15, $C$SL38          ; [ALU_PRU] |195| 
        MOV       r16, r4               ; [ALU_PRU] |195| $O$C5
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_name("dict_create")
	.dwattr $C$DW$408, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |195| dict_create
	.dwpsn	file "src/xmacros.outer.h",line 220,column 1,is_stmt,isa 0
        LDI       r0, ||$P$T5$6||       ; [ALU_PRU] |220| $P$T5$6
        LBBO      &r14.b0, r0, 0, 44    ; [ALU_PRU] |220| 
        SBBO      &r14.b0, r2, 204, 44  ; [ALU_PRU] |220| fw_interpret
        LDI       r14.b0, 0x09          ; [ALU_PRU] |220| 
        LDI       r16, ||xt_interpret|| ; [ALU_PRU] |220| $O$C1,xt_interpret
        MOV       r14.b1, r14.b0        ; [ALU_PRU] |220| 
        LBBO      &r0, r11, 0, 4        ; [ALU_PRU] |220| $O$C8
        LDI32     r15, $C$SL39          ; [ALU_PRU] |220| 
        SBBO      &r0, r2, 204, 4       ; [ALU_PRU] |220| fw_interpret
        SBBO      &r13, r2, 208, 4      ; [ALU_PRU] |220| fw_interpret,$O$C7
        ADD       r0, r2, 204           ; [ALU_PRU] |220| fw_interpret,fw_interpret
        SBBO      &r9, r2, 212, 4       ; [ALU_PRU] |220| fw_interpret,$O$C6
        SBBO      &r4, r2, 220, 4       ; [ALU_PRU] |220| fw_interpret,$O$C5
        SBBO      &r16, r2, 224, 4      ; [ALU_PRU] |220| fw_interpret,$O$C1
        SBBO      &r7, r2, 228, 4       ; [ALU_PRU] |220| fw_interpret,$O$C4
        SBBO      &r8, r2, 236, 4       ; [ALU_PRU] |220| fw_interpret,$O$C3
        SBBO      &r8, r2, 240, 4       ; [ALU_PRU] |220| fw_interpret,$O$C3
        SBBO      &r12, r2, 244, 4      ; [ALU_PRU] |220| fw_interpret,$O$C2
        LBBO      &r17.b0, r0, 0, 44    ; [ALU_PRU] |220| 
        SBBO      &r17.b0, r16, 0, 44   ; [ALU_PRU] |220| 
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("dict_create")
	.dwattr $C$DW$409, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |220| dict_create
	.dwpsn	file "src/forthwith.c",line 106,column 3,is_stmt,isa 0
        ZERO      &r14, 4               ; [ALU_PRU] |106| 
        ADD       r2, r2, 0x5b          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 255
        LBBO      &r3.b2, r2, 213, 42   ; [ALU_PRU] 
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
	.dwcfi	restore_reg, 16
	.dwcfi	restore_reg, 17
	.dwcfi	restore_reg, 18
	.dwcfi	restore_reg, 19
	.dwcfi	restore_reg, 20
	.dwcfi	restore_reg, 21
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 23
	.dwcfi	restore_reg, 24
	.dwcfi	restore_reg, 25
	.dwcfi	restore_reg, 26
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 28
	.dwcfi	restore_reg, 29
	.dwcfi	restore_reg, 30
	.dwcfi	restore_reg, 31
	.dwcfi	restore_reg, 32
	.dwcfi	restore_reg, 33
	.dwcfi	restore_reg, 34
	.dwcfi	restore_reg, 35
	.dwcfi	restore_reg, 36
	.dwcfi	restore_reg, 37
	.dwcfi	restore_reg, 38
	.dwcfi	restore_reg, 39
	.dwcfi	restore_reg, 40
	.dwcfi	restore_reg, 41
	.dwcfi	restore_reg, 42
	.dwcfi	restore_reg, 43
	.dwcfi	restore_reg, 44
	.dwcfi	restore_reg, 45
	.dwcfi	restore_reg, 46
	.dwcfi	restore_reg, 47
	.dwcfi	restore_reg, 48
	.dwcfi	restore_reg, 49
	.dwcfi	restore_reg, 50
	.dwcfi	restore_reg, 51
	.dwcfi	restore_reg, 52
	.dwcfi	restore_reg, 53
	.dwcfi	restore_reg, 54
	.dwcfi	restore_reg, 55
        ADD       r2, r2, 0xff          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$364, DW_AT_TI_end_file("src/forthwith.c")
	.dwattr $C$DW$364, DW_AT_TI_end_line(0x6b)
	.dwattr $C$DW$364, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$364

	.sect	".text:forth_alloc_var_len"
	.clink
	.global	||forth_alloc_var_len||

$C$DW$411	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$411, DW_AT_name("forth_alloc_var_len")
	.dwattr $C$DW$411, DW_AT_low_pc(||forth_alloc_var_len||)
	.dwattr $C$DW$411, DW_AT_high_pc(0x00)
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("forth_alloc_var_len")
	.dwattr $C$DW$411, DW_AT_external
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$411, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$411, DW_AT_TI_begin_line(0x08)
	.dwattr $C$DW$411, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$411, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$411, DW_AT_decl_line(0x08)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$411, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/dict.c",line 8,column 44,is_stmt,address ||forth_alloc_var_len||,isa 0

	.dwfde $C$DW$CIE, ||forth_alloc_var_len||
$C$DW$412	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$412, DW_AT_name("len")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$412, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: forth_alloc_var_len           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_alloc_var_len||:
;* --------------------------------------------------------------------------*
;* r1_0  assigned to $O$v1
;* r14_0 assigned to len
$C$DW$413	.dwtag  DW_TAG_variable
	.dwattr $C$DW$413, DW_AT_name("len")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$413, DW_AT_location[DW_OP_regx 0x38]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/dict.c",line 10,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |10| ctx
        LSL       r14, r14, 0x02        ; [ALU_PRU] |10| len
        LBBO      &r1, r0, 0, 4         ; [ALU_PRU] |10| $O$v1
        LBBO      &r0, r1, 16, 4        ; [ALU_PRU] |10| $O$v1
        LBBO      &r15, r0, 0, 4        ; [ALU_PRU] |10| 
        ADD       r14, r15, r14         ; [ALU_PRU] |10| 
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |10| 
	.dwpsn	file "src/dict.c",line 11,column 3,is_stmt,isa 0
        LBBO      &r0, r1, 16, 4        ; [ALU_PRU] |11| $O$v1
        LBBO      &r14, r0, 0, 4        ; [ALU_PRU] |11| 
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$411, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$411, DW_AT_TI_end_line(0x0c)
	.dwattr $C$DW$411, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$411

	.sect	".text:forth_alloc_var"
	.clink
	.global	||forth_alloc_var||

$C$DW$415	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$415, DW_AT_name("forth_alloc_var")
	.dwattr $C$DW$415, DW_AT_low_pc(||forth_alloc_var||)
	.dwattr $C$DW$415, DW_AT_high_pc(0x00)
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("forth_alloc_var")
	.dwattr $C$DW$415, DW_AT_external
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$415, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$415, DW_AT_TI_begin_line(0x0e)
	.dwattr $C$DW$415, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$415, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$415, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$415, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$415, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/dict.c",line 14,column 29,is_stmt,address ||forth_alloc_var||,isa 0

	.dwfde $C$DW$CIE, ||forth_alloc_var||

;***************************************************************
;* FNAME: forth_alloc_var               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||forth_alloc_var||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/dict.c",line 15,column 3,is_stmt,isa 0
        LDI       r14, 0x0001           ; [ALU_PRU] |15| 
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("forth_alloc_var_len")
	.dwattr $C$DW$416, DW_AT_TI_call

        JAL       r3.w2, ||forth_alloc_var_len|| ; [ALU_PRU] |15| forth_alloc_var_len
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$415, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$415, DW_AT_TI_end_line(0x10)
	.dwattr $C$DW$415, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$415

	.sect	".text:find"
	.clink
	.global	||find||

$C$DW$418	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$418, DW_AT_name("find")
	.dwattr $C$DW$418, DW_AT_low_pc(||find||)
	.dwattr $C$DW$418, DW_AT_high_pc(0x00)
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("find")
	.dwattr $C$DW$418, DW_AT_external
	.dwattr $C$DW$418, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$418, DW_AT_TI_begin_line(0x27)
	.dwattr $C$DW$418, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$418, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x27)
	.dwattr $C$DW$418, DW_AT_decl_column(0x01)
	.dwattr $C$DW$418, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 39,column 1,is_stmt,address ||find||,isa 0

	.dwfde $C$DW$CIE, ||find||
$C$DW$419	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$419, DW_AT_name("bpsp")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$419, DW_AT_location[DW_OP_regx 0x38]

$C$DW$420	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$420, DW_AT_name("psp")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$420, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$421	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$421, DW_AT_name("brsp")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$421, DW_AT_location[DW_OP_regx 0x40]

$C$DW$422	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$422, DW_AT_name("rsp")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$422, DW_AT_location[DW_OP_regx 0x44]

$C$DW$423	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$423, DW_AT_name("ip")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$423, DW_AT_location[DW_OP_regx 0x48]

$C$DW$424	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$424, DW_AT_name("x")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$424, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: find                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||find||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||dofind||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$425	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$425, DW_AT_low_pc(0x00)
	.dwattr $C$DW$425, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$418, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$418, DW_AT_TI_end_line(0x27)
	.dwattr $C$DW$418, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$418

	.sect	".text:fetch"
	.clink
	.global	||fetch||

$C$DW$426	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$426, DW_AT_name("fetch")
	.dwattr $C$DW$426, DW_AT_low_pc(||fetch||)
	.dwattr $C$DW$426, DW_AT_high_pc(0x00)
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("fetch")
	.dwattr $C$DW$426, DW_AT_external
	.dwattr $C$DW$426, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$426, DW_AT_TI_begin_line(0x03)
	.dwattr $C$DW$426, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$426, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x03)
	.dwattr $C$DW$426, DW_AT_decl_column(0x01)
	.dwattr $C$DW$426, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 3,column 1,is_stmt,address ||fetch||,isa 0

	.dwfde $C$DW$CIE, ||fetch||
$C$DW$427	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$427, DW_AT_name("bpsp")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$427, DW_AT_location[DW_OP_regx 0x38]

$C$DW$428	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$428, DW_AT_name("psp")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$428, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$429	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$429, DW_AT_name("brsp")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$429, DW_AT_location[DW_OP_regx 0x40]

$C$DW$430	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$430, DW_AT_name("rsp")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$430, DW_AT_location[DW_OP_regx 0x44]

$C$DW$431	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$431, DW_AT_name("ip")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$431, DW_AT_location[DW_OP_regx 0x48]

$C$DW$432	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$432, DW_AT_name("x")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$432, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: fetch                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||fetch||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        MOV       r20, r23
        LBBO      &r23, r20, 0, 4
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$433	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$433, DW_AT_low_pc(0x00)
	.dwattr $C$DW$433, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$426, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$426, DW_AT_TI_end_line(0x03)
	.dwattr $C$DW$426, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$426

	.sect	".text:execs"
	.clink
	.global	||execs||

$C$DW$434	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$434, DW_AT_name("execs")
	.dwattr $C$DW$434, DW_AT_low_pc(||execs||)
	.dwattr $C$DW$434, DW_AT_high_pc(0x00)
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("execs")
	.dwattr $C$DW$434, DW_AT_external
	.dwattr $C$DW$434, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$434, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$434, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$434, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$434, DW_AT_decl_column(0x01)
	.dwattr $C$DW$434, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 62,column 1,is_stmt,address ||execs||,isa 0

	.dwfde $C$DW$CIE, ||execs||
$C$DW$435	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$435, DW_AT_name("bpsp")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$435, DW_AT_location[DW_OP_regx 0x38]

$C$DW$436	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$436, DW_AT_name("psp")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$436, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$437	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$437, DW_AT_name("brsp")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$437, DW_AT_location[DW_OP_regx 0x40]

$C$DW$438	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$438, DW_AT_name("rsp")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$438, DW_AT_location[DW_OP_regx 0x44]

$C$DW$439	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$439, DW_AT_name("ip")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$439, DW_AT_location[DW_OP_regx 0x48]

$C$DW$440	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$440, DW_AT_name("x")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$440, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: execs                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||execs||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        MOV       r21, r23
        JMP       ||run||
$C$DW$441	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$441, DW_AT_low_pc(0x00)
	.dwattr $C$DW$441, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$434, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$434, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$434, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$434

	.sect	".text:equals"
	.clink
	.global	||equals||

$C$DW$442	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$442, DW_AT_name("equals")
	.dwattr $C$DW$442, DW_AT_low_pc(||equals||)
	.dwattr $C$DW$442, DW_AT_high_pc(0x00)
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("equals")
	.dwattr $C$DW$442, DW_AT_external
	.dwattr $C$DW$442, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$442, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$442, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$442, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x54)
	.dwattr $C$DW$442, DW_AT_decl_column(0x01)
	.dwattr $C$DW$442, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 84,column 1,is_stmt,address ||equals||,isa 0

	.dwfde $C$DW$CIE, ||equals||
$C$DW$443	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$443, DW_AT_name("bpsp")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$443, DW_AT_location[DW_OP_regx 0x38]

$C$DW$444	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$444, DW_AT_name("psp")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$444, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$445	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$445, DW_AT_name("brsp")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$445, DW_AT_location[DW_OP_regx 0x40]

$C$DW$446	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$446, DW_AT_name("rsp")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$446, DW_AT_location[DW_OP_regx 0x44]

$C$DW$447	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$447, DW_AT_name("ip")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x48]

$C$DW$448	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$448, DW_AT_name("x")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$448, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: equals                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||equals||:
;* --------------------------------------------------------------------------*
;* r19_0 assigned to x
$C$DW$449	.dwtag  DW_TAG_variable
	.dwattr $C$DW$449, DW_AT_name("x")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$449, DW_AT_location[DW_OP_regx 0x4c]

	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        SUB       r16, r16, 4
        LBBO      &r24, r16, 0, 4
        MOV       r20, r23
        XOR       r20, r20, r24
        QBEQ      ||$C$L35||, r19, 0x00 ; [ALU_PRU] |84| x
;* --------------------------------------------------------------------------*
        LDI       r23, 1
;* --------------------------------------------------------------------------*
||$C$L35||:    
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$450	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$450, DW_AT_low_pc(0x00)
	.dwattr $C$DW$450, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$442, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$442, DW_AT_TI_end_line(0x54)
	.dwattr $C$DW$442, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$442

	.sect	".text:emit"
	.clink
	.global	||emit||

$C$DW$451	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$451, DW_AT_name("emit")
	.dwattr $C$DW$451, DW_AT_low_pc(||emit||)
	.dwattr $C$DW$451, DW_AT_high_pc(0x00)
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("emit")
	.dwattr $C$DW$451, DW_AT_external
	.dwattr $C$DW$451, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$451, DW_AT_TI_begin_line(0x2a)
	.dwattr $C$DW$451, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$451, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$451, DW_AT_decl_column(0x01)
	.dwattr $C$DW$451, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 42,column 1,is_stmt,address ||emit||,isa 0

	.dwfde $C$DW$CIE, ||emit||
$C$DW$452	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$452, DW_AT_name("bpsp")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$452, DW_AT_location[DW_OP_regx 0x38]

$C$DW$453	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$453, DW_AT_name("psp")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$453, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$454	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$454, DW_AT_name("brsp")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$454, DW_AT_location[DW_OP_regx 0x40]

$C$DW$455	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$455, DW_AT_name("rsp")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_regx 0x44]

$C$DW$456	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$456, DW_AT_name("ip")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_regx 0x48]

$C$DW$457	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$457, DW_AT_name("x")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: emit                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||emit||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||doemit||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$458	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$458, DW_AT_low_pc(0x00)
	.dwattr $C$DW$458, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$451, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$451, DW_AT_TI_end_line(0x2a)
	.dwattr $C$DW$451, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$451

	.sect	".text:dup"
	.clink
	.global	||dup||

$C$DW$459	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$459, DW_AT_name("dup")
	.dwattr $C$DW$459, DW_AT_low_pc(||dup||)
	.dwattr $C$DW$459, DW_AT_high_pc(0x00)
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("dup")
	.dwattr $C$DW$459, DW_AT_external
	.dwattr $C$DW$459, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$459, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$459, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$459, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x19)
	.dwattr $C$DW$459, DW_AT_decl_column(0x01)
	.dwattr $C$DW$459, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 25,column 1,is_stmt,address ||dup||,isa 0

	.dwfde $C$DW$CIE, ||dup||
$C$DW$460	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$460, DW_AT_name("bpsp")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_regx 0x38]

$C$DW$461	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$461, DW_AT_name("psp")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$462	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$462, DW_AT_name("brsp")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_regx 0x40]

$C$DW$463	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$463, DW_AT_name("rsp")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$463, DW_AT_location[DW_OP_regx 0x44]

$C$DW$464	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$464, DW_AT_name("ip")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x48]

$C$DW$465	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$465, DW_AT_name("x")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: dup                           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dup||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        MOV       r24, r23
        SBBO      &r16, r24, 0, 4
        ADD r16, r16, 4
        SBBO      &r16, r23, 0, 4
        ADD r16, r16, 4
        JMP       ||next||
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$459, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$459, DW_AT_TI_end_line(0x19)
	.dwattr $C$DW$459, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$459

	.sect	".text:drop"
	.clink
	.global	||drop||

$C$DW$467	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$467, DW_AT_name("drop")
	.dwattr $C$DW$467, DW_AT_low_pc(||drop||)
	.dwattr $C$DW$467, DW_AT_high_pc(0x00)
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("drop")
	.dwattr $C$DW$467, DW_AT_external
	.dwattr $C$DW$467, DW_AT_TI_begin_file("src/xmacros.core.h")
	.dwattr $C$DW$467, DW_AT_TI_begin_line(0x13)
	.dwattr $C$DW$467, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$467, DW_AT_decl_file("src/xmacros.core.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x13)
	.dwattr $C$DW$467, DW_AT_decl_column(0x01)
	.dwattr $C$DW$467, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.core.h",line 19,column 1,is_stmt,address ||drop||,isa 0

	.dwfde $C$DW$CIE, ||drop||
$C$DW$468	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$468, DW_AT_name("bpsp")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_regx 0x38]

$C$DW$469	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$469, DW_AT_name("psp")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$469, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$470	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$470, DW_AT_name("brsp")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x40]

$C$DW$471	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$471, DW_AT_name("rsp")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x44]

$C$DW$472	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$472, DW_AT_name("ip")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$472, DW_AT_location[DW_OP_regx 0x48]

$C$DW$473	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$473, DW_AT_name("x")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$473, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: drop                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||drop||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       r16, r16, 4
        LBBO      &r23, r16, 0, 4
        JMP       ||next||
$C$DW$474	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$474, DW_AT_low_pc(0x00)
	.dwattr $C$DW$474, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$467, DW_AT_TI_end_file("src/xmacros.core.h")
	.dwattr $C$DW$467, DW_AT_TI_end_line(0x13)
	.dwattr $C$DW$467, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$467

	.sect	".text:doxmask"
	.clink
	.global	||doxmask||

$C$DW$475	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$475, DW_AT_name("doxmask")
	.dwattr $C$DW$475, DW_AT_low_pc(||doxmask||)
	.dwattr $C$DW$475, DW_AT_high_pc(0x00)
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("doxmask")
	.dwattr $C$DW$475, DW_AT_external
	.dwattr $C$DW$475, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$475, DW_AT_TI_begin_line(0x3b)
	.dwattr $C$DW$475, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$475, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$475, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$475, DW_AT_decl_column(0x06)
	.dwattr $C$DW$475, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 59,column 16,is_stmt,address ||doxmask||,isa 0

	.dwfde $C$DW$CIE, ||doxmask||

;***************************************************************
;* FNAME: doxmask                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||doxmask||:
;* --------------------------------------------------------------------------*
;* r16_0 assigned to last_word
$C$DW$476	.dwtag  DW_TAG_variable
	.dwattr $C$DW$476, DW_AT_name("last_word")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("last_word")
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x40]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 60,column 22,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |60| ctx
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |60| 
        LBBO      &r0, r0, 20, 4        ; [ALU_PRU] |60| 
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |60| 
        SUB       r16, r0, 0x0e         ; [ALU_PRU] |60| last_word
	.dwpsn	file "src/utilities.c",line 61,column 3,is_stmt,isa 0
$C$DW$477	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$477, DW_AT_low_pc(0x00)
	.dwattr $C$DW$477, DW_AT_name("forth_pop")
	.dwattr $C$DW$477, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |61| forth_pop
        LBBO      &r0.b0, r16, 8, 1     ; [ALU_PRU] |61| last_word
        XOR       r0.b0, r0.b0, r14.b0  ; [ALU_PRU] |61| 
        SBBO      &r0.b0, r16, 8, 1     ; [ALU_PRU] |61| last_word
$C$DW$478	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$478, DW_AT_low_pc(0x00)
	.dwattr $C$DW$478, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$475, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$475, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$475, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$475

	.sect	".text:doword"
	.clink
	.global	||doword||

$C$DW$479	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$479, DW_AT_name("doword")
	.dwattr $C$DW$479, DW_AT_low_pc(||doword||)
	.dwattr $C$DW$479, DW_AT_high_pc(0x00)
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("doword")
	.dwattr $C$DW$479, DW_AT_external
	.dwattr $C$DW$479, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$479, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$479, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$479, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$479, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$479, DW_AT_decl_column(0x06)
	.dwattr $C$DW$479, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/utilities.c",line 78,column 15,is_stmt,address ||doword||,isa 0

	.dwfde $C$DW$CIE, ||doword||

;***************************************************************
;* FNAME: doword                        FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Auto,  0 SOE     *
;***************************************************************

||doword||:
;* --------------------------------------------------------------------------*
$C$DW$480	.dwtag  DW_TAG_variable
	.dwattr $C$DW$480, DW_AT_name("word_start")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("word_start")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_breg8 0]

$C$DW$481	.dwtag  DW_TAG_variable
	.dwattr $C$DW$481, DW_AT_name("word_stop")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("word_stop")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_breg8 4]

;* r24_0 assigned to $O$C1
;* r0_0  assigned to $O$C2
;* r14_1 assigned to $O$C3
;* r15_0 assigned to $O$C4
;* r23_0 assigned to len
$C$DW$482	.dwtag  DW_TAG_variable
	.dwattr $C$DW$482, DW_AT_name("len")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_regx 0x5c]

;* r22_0 assigned to tib
$C$DW$483	.dwtag  DW_TAG_variable
	.dwattr $C$DW$483, DW_AT_name("tib")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("tib")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_regx 0x58]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 80,column 15,is_stmt,isa 0
        LDI       r24, ||ctx||          ; [ALU_PRU] |80| $O$C1,ctx
        SUB       r2, r2, 0x08          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 8
        MOV       r23.w1, r3.w2         ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 93
	.dwcfi	save_reg_to_reg, 15, 94
        LBBO      &r0, r24, 0, 4        ; [ALU_PRU] |80| $O$C1
	.dwpsn	file "src/utilities.c",line 85,column 3,is_stmt,isa 0
        ADD       r16, r2, 0            ; [ALU_PRU] |85| word_start,word_start
        ADD       r17, r2, 4            ; [ALU_PRU] |85| word_stop,word_stop
	.dwpsn	file "src/utilities.c",line 80,column 15,is_stmt,isa 0
        LBBO      &r0, r0, 4, 4         ; [ALU_PRU] |80| $O$C2
        LBBO      &r14.b1, r0, 12, 1    ; [ALU_PRU] |80| $O$C3,$O$C2
	.dwpsn	file "src/utilities.c",line 81,column 15,is_stmt,isa 0
        LBBO      &r15, r0, 16, 4       ; [ALU_PRU] |81| $O$C4,$O$C2
	.dwpsn	file "src/utilities.c",line 85,column 3,is_stmt,isa 0
        LBBO      &r14.b0, r0, 8, 1     ; [ALU_PRU] |85| $O$C2
	.dwpsn	file "src/utilities.c",line 80,column 15,is_stmt,isa 0
        MOV       r23.b0, r14.b1        ; [ALU_PRU] |80| len,$O$C3
	.dwpsn	file "src/utilities.c",line 85,column 3,is_stmt,isa 0
$C$DW$484	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$484, DW_AT_low_pc(0x00)
	.dwattr $C$DW$484, DW_AT_name("parse_word")
	.dwattr $C$DW$484, DW_AT_TI_call

        JAL       r3.w2, ||parse_word|| ; [ALU_PRU] |85| parse_word
	.dwpsn	file "src/utilities.c",line 81,column 15,is_stmt,isa 0
        MOV       r22, r15              ; [ALU_PRU] |81| tib,$O$C4
	.dwpsn	file "src/utilities.c",line 96,column 3,is_stmt,isa 0
        LBBO      &r1, r24, 0, 4        ; [ALU_PRU] |96| $O$C1
        LBBO      &r0, r2, 4, 4         ; [ALU_PRU] |96| word_stop
        LBBO      &r1, r1, 4, 4         ; [ALU_PRU] |96| 
        SUB       r0, r0, r22           ; [ALU_PRU] |96| tib
        SBBO      &r0, r1, 8, 4         ; [ALU_PRU] |96| 
	.dwpsn	file "src/utilities.c",line 97,column 3,is_stmt,isa 0
        LBBO      &r14, r2, 0, 4        ; [ALU_PRU] |97| word_start
$C$DW$485	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$485, DW_AT_low_pc(0x00)
	.dwattr $C$DW$485, DW_AT_name("forth_push")
	.dwattr $C$DW$485, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |97| forth_push
	.dwpsn	file "src/utilities.c",line 98,column 3,is_stmt,isa 0
        LBBO      &r0, r2, 0, 4         ; [ALU_PRU] |98| word_start
        LBBO      &r1, r2, 4, 4         ; [ALU_PRU] |98| word_stop
        RSB       r14, r0, r1           ; [ALU_PRU] |98| 
$C$DW$486	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$486, DW_AT_low_pc(0x00)
	.dwattr $C$DW$486, DW_AT_name("forth_push")
	.dwattr $C$DW$486, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |98| forth_push
	.dwpsn	file "src/utilities.c",line 99,column 3,is_stmt,isa 0
        LDI32     r1, 0x80000000        ; [ALU_PRU] |99| 
        ZERO      &r14, 4               ; [ALU_PRU] |99| 
        LBBO      &r0, r24, 0, 4        ; [ALU_PRU] |99| $O$C1
        XOR       r1, r23.b0, r1        ; [ALU_PRU] |99| len
        LBBO      &r0, r0, 4, 4         ; [ALU_PRU] |99| 
        LBBO      &r0, r0, 8, 4         ; [ALU_PRU] |99| 
        XOR       r0.b3, r0.b3, 0x80    ; [ALU_PRU] |99| 
        QBGT      ||$C$L36||, r1, r0    ; [ALU_PRU] |99| 
;* --------------------------------------------------------------------------*
        LDI       r14, 0x0001           ; [ALU_PRU] |99| 
;* --------------------------------------------------------------------------*
||$C$L36||:    
$C$DW$487	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$487, DW_AT_low_pc(0x00)
	.dwattr $C$DW$487, DW_AT_name("forth_push")
	.dwattr $C$DW$487, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |99| forth_push
        ADD       r2, r2, 0x08          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$488	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$488, DW_AT_low_pc(0x00)
	.dwattr $C$DW$488, DW_AT_TI_return

        JMP       r23.w1                ; [ALU_PRU] 
	.dwattr $C$DW$479, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$479, DW_AT_TI_end_line(0x64)
	.dwattr $C$DW$479, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$479

	.sect	".text:dosuf"
	.clink
	.global	||dosuf||

$C$DW$489	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$489, DW_AT_name("dosuf")
	.dwattr $C$DW$489, DW_AT_low_pc(||dosuf||)
	.dwattr $C$DW$489, DW_AT_high_pc(0x00)
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("dosuf")
	.dwattr $C$DW$489, DW_AT_external
	.dwattr $C$DW$489, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$489, DW_AT_TI_begin_line(0x0b)
	.dwattr $C$DW$489, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$489, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$489, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$489, DW_AT_decl_column(0x09)
	.dwattr $C$DW$489, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 11,column 17,is_stmt,address ||dosuf||,isa 0

	.dwfde $C$DW$CIE, ||dosuf||

;***************************************************************
;* FNAME: dosuf                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dosuf||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to $O$C1
;* r0_0  assigned to $O$v1
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 12,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |12| ctx
        LDI       r1, 0x0002            ; [ALU_PRU] |12| 
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |12| $O$v1
        LBBO      &r14, r0, 4, 4        ; [ALU_PRU] |12| $O$v1
        SBBO      &r1, r14, 4, 4        ; [ALU_PRU] |12| 
	.dwpsn	file "src/utilities.c",line 13,column 3,is_stmt,isa 0
        LBBO      &r0, r0, 8, 4         ; [ALU_PRU] |13| $O$C1,$O$v1
        LBBO      &r1, r0, 4, 4         ; [ALU_PRU] |13| $O$C1
        SBBO      &r1, r0, 0, 4         ; [ALU_PRU] |13| $O$C1
$C$DW$490	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$490, DW_AT_low_pc(0x00)
	.dwattr $C$DW$490, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$489, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$489, DW_AT_TI_end_line(0x0f)
	.dwattr $C$DW$489, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$489

	.sect	".text:dosavehere"
	.clink
	.global	||dosavehere||

$C$DW$491	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$491, DW_AT_name("dosavehere")
	.dwattr $C$DW$491, DW_AT_low_pc(||dosavehere||)
	.dwattr $C$DW$491, DW_AT_high_pc(0x00)
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("dosavehere")
	.dwattr $C$DW$491, DW_AT_external
	.dwattr $C$DW$491, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$491, DW_AT_TI_begin_line(0x35)
	.dwattr $C$DW$491, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$491, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$491, DW_AT_decl_line(0x35)
	.dwattr $C$DW$491, DW_AT_decl_column(0x06)
	.dwattr $C$DW$491, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 53,column 19,is_stmt,address ||dosavehere||,isa 0

	.dwfde $C$DW$CIE, ||dosavehere||

;***************************************************************
;* FNAME: dosavehere                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dosavehere||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 54,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |54| ctx
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |54| 
        LBBO      &r0, r0, 16, 4        ; [ALU_PRU] |54| 
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |54| 
        LBBO      &r14, r0, 0, 4        ; [ALU_PRU] |54| 
$C$DW$492	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$492, DW_AT_low_pc(0x00)
	.dwattr $C$DW$492, DW_AT_name("forth_push")
	.dwattr $C$DW$492, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |54| forth_push
$C$DW$493	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$493, DW_AT_low_pc(0x00)
	.dwattr $C$DW$493, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$491, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$491, DW_AT_TI_end_line(0x37)
	.dwattr $C$DW$491, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$491

	.sect	".text:doruf"
	.clink
	.global	||doruf||

$C$DW$494	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$494, DW_AT_name("doruf")
	.dwattr $C$DW$494, DW_AT_low_pc(||doruf||)
	.dwattr $C$DW$494, DW_AT_high_pc(0x00)
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("doruf")
	.dwattr $C$DW$494, DW_AT_external
	.dwattr $C$DW$494, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$494, DW_AT_TI_begin_line(0x13)
	.dwattr $C$DW$494, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$494, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$494, DW_AT_decl_line(0x13)
	.dwattr $C$DW$494, DW_AT_decl_column(0x09)
	.dwattr $C$DW$494, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 19,column 32,is_stmt,address ||doruf||,isa 0

	.dwfde $C$DW$CIE, ||doruf||
$C$DW$495	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$495, DW_AT_name("bpsp")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$495, DW_AT_location[DW_OP_regx 0x38]

$C$DW$496	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$496, DW_AT_name("psp")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$496, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$497	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$497, DW_AT_name("brsp")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$497, DW_AT_location[DW_OP_regx 0x40]

$C$DW$498	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$498, DW_AT_name("rsp")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$498, DW_AT_location[DW_OP_regx 0x44]

$C$DW$499	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$499, DW_AT_name("ip")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$499, DW_AT_location[DW_OP_regx 0x48]

$C$DW$500	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$500, DW_AT_name("x")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$500, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: doruf                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||doruf||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to $O$C1
;* r0_0  assigned to $O$v1
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 20,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |20| ctx
        LDI       r1, 0x0005            ; [ALU_PRU] |20| 
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |20| $O$v1
        LBBO      &r14, r0, 4, 4        ; [ALU_PRU] |20| $O$v1
        SBBO      &r1, r14, 4, 4        ; [ALU_PRU] |20| 
	.dwpsn	file "src/utilities.c",line 21,column 3,is_stmt,isa 0
        LBBO      &r0, r0, 12, 4        ; [ALU_PRU] |21| $O$C1,$O$v1
        LBBO      &r1, r0, 4, 4         ; [ALU_PRU] |21| $O$C1
        SBBO      &r1, r0, 0, 4         ; [ALU_PRU] |21| $O$C1
$C$DW$501	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$501, DW_AT_low_pc(0x00)
	.dwattr $C$DW$501, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$494, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$494, DW_AT_TI_end_line(0x17)
	.dwattr $C$DW$494, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$494

	.sect	".text:doret"
	.clink
	.global	||doret||

$C$DW$502	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$502, DW_AT_name("doret")
	.dwattr $C$DW$502, DW_AT_low_pc(||doret||)
	.dwattr $C$DW$502, DW_AT_high_pc(0x00)
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("doret")
	.dwattr $C$DW$502, DW_AT_external
	.dwattr $C$DW$502, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$502, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$502, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$502, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$502, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$502, DW_AT_decl_column(0x06)
	.dwattr $C$DW$502, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 27,column 14,is_stmt,address ||doret||,isa 0

	.dwfde $C$DW$CIE, ||doret||

;***************************************************************
;* FNAME: doret                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||doret||:
;* --------------------------------------------------------------------------*
;* r14_0 assigned to errorno
$C$DW$503	.dwtag  DW_TAG_variable
	.dwattr $C$DW$503, DW_AT_name("errorno")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("errorno")
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$503, DW_AT_location[DW_OP_regx 0x38]

	.dwcfi	cfa_offset, 0
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/utilities.c",line 28,column 19,is_stmt,isa 0
$C$DW$504	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$504, DW_AT_low_pc(0x00)
	.dwattr $C$DW$504, DW_AT_name("forth_pop")
	.dwattr $C$DW$504, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |28| forth_pop
	.dwpsn	file "src/utilities.c",line 29,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |29| ctx
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |29| 
        LBBO      &r0, r0, 4, 4         ; [ALU_PRU] |29| 
        SBBO      &r14, r0, 4, 4        ; [ALU_PRU] |29| errorno
$C$DW$505	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$505, DW_AT_low_pc(0x00)
	.dwattr $C$DW$505, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$502, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$502, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$502, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$502

	.sect	".text:dorbrac"
	.clink
	.global	||dorbrac||

$C$DW$506	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$506, DW_AT_name("dorbrac")
	.dwattr $C$DW$506, DW_AT_low_pc(||dorbrac||)
	.dwattr $C$DW$506, DW_AT_high_pc(0x00)
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("dorbrac")
	.dwattr $C$DW$506, DW_AT_external
	.dwattr $C$DW$506, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$506, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$506, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$506, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$506, DW_AT_decl_line(0x48)
	.dwattr $C$DW$506, DW_AT_decl_column(0x06)
	.dwattr $C$DW$506, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 72,column 16,is_stmt,address ||dorbrac||,isa 0

	.dwfde $C$DW$CIE, ||dorbrac||

;***************************************************************
;* FNAME: dorbrac                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dorbrac||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 73,column 3,is_stmt,isa 0
        LDI       r1, ||ctx||           ; [ALU_PRU] |73| ctx
        LDI       r0, 0x0001            ; [ALU_PRU] |73| 
        LBBO      &r1, r1, 0, 4         ; [ALU_PRU] |73| 
        LBBO      &r1, r1, 4, 4         ; [ALU_PRU] |73| 
        SBBO      &r0, r1, 0, 4         ; [ALU_PRU] |73| 
$C$DW$507	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$507, DW_AT_low_pc(0x00)
	.dwattr $C$DW$507, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$506, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$506, DW_AT_TI_end_line(0x4a)
	.dwattr $C$DW$506, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$506

	.sect	".text:donumber"
	.clink
	.global	||donumber||

$C$DW$508	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$508, DW_AT_name("donumber")
	.dwattr $C$DW$508, DW_AT_low_pc(||donumber||)
	.dwattr $C$DW$508, DW_AT_high_pc(0x00)
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("donumber")
	.dwattr $C$DW$508, DW_AT_external
	.dwattr $C$DW$508, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$508, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$508, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$508, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$508, DW_AT_decl_line(0x85)
	.dwattr $C$DW$508, DW_AT_decl_column(0x09)
	.dwattr $C$DW$508, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/utilities.c",line 133,column 20,is_stmt,address ||donumber||,isa 0

	.dwfde $C$DW$CIE, ||donumber||

;***************************************************************
;* FNAME: donumber                      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Auto,  0 SOE     *
;***************************************************************

||donumber||:
;* --------------------------------------------------------------------------*
$C$DW$509	.dwtag  DW_TAG_variable
	.dwattr $C$DW$509, DW_AT_name("err")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("err")
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$509, DW_AT_location[DW_OP_breg8 0]

$C$DW$510	.dwtag  DW_TAG_variable
	.dwattr $C$DW$510, DW_AT_name("number")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$510, DW_AT_location[DW_OP_breg8 4]

;* r17_0 assigned to len
$C$DW$511	.dwtag  DW_TAG_variable
	.dwattr $C$DW$511, DW_AT_name("len")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$511, DW_AT_location[DW_OP_regx 0x44]

	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x08          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 8
	.dwpsn	file "src/utilities.c",line 134,column 15,is_stmt,isa 0
        LDI       r16, 0x0000           ; [ALU_PRU] |134| 
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
        SBBO      &r16, r2, 0, 4        ; [ALU_PRU] |134| err
	.dwpsn	file "src/utilities.c",line 135,column 15,is_stmt,isa 0
$C$DW$512	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$512, DW_AT_low_pc(0x00)
	.dwattr $C$DW$512, DW_AT_name("forth_pop")
	.dwattr $C$DW$512, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |135| forth_pop
        MOV       r17.b0, r14.b0        ; [ALU_PRU] |135| len
	.dwpsn	file "src/utilities.c",line 136,column 14,is_stmt,isa 0
$C$DW$513	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$513, DW_AT_low_pc(0x00)
	.dwattr $C$DW$513, DW_AT_name("forth_pop")
	.dwattr $C$DW$513, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |136| forth_pop
        MOV       r15, r14              ; [ALU_PRU] |136| 
	.dwpsn	file "src/utilities.c",line 138,column 18,is_stmt,isa 0
        SBBO      &r16, r2, 4, 4        ; [ALU_PRU] |138| number
	.dwpsn	file "src/utilities.c",line 139,column 3,is_stmt,isa 0
        MOV       r14.b0, r17.b0        ; [ALU_PRU] |139| len
        ADD       r17, r2, 0            ; [ALU_PRU] |139| err,err
        ADD       r16, r2, 4            ; [ALU_PRU] |139| number,number
$C$DW$514	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$514, DW_AT_low_pc(0x00)
	.dwattr $C$DW$514, DW_AT_name("parse_number")
	.dwattr $C$DW$514, DW_AT_TI_call

        JAL       r3.w2, ||parse_number|| ; [ALU_PRU] |139| parse_number
	.dwpsn	file "src/utilities.c",line 141,column 3,is_stmt,isa 0
        LBBO      &r14, r2, 4, 4        ; [ALU_PRU] |141| number
$C$DW$515	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$515, DW_AT_low_pc(0x00)
	.dwattr $C$DW$515, DW_AT_name("forth_push")
	.dwattr $C$DW$515, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |141| forth_push
	.dwpsn	file "src/utilities.c",line 142,column 3,is_stmt,isa 0
        LBBO      &r14, r2, 0, 4        ; [ALU_PRU] |142| err
$C$DW$516	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$516, DW_AT_low_pc(0x00)
	.dwattr $C$DW$516, DW_AT_name("forth_push")
	.dwattr $C$DW$516, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |142| forth_push
        ADD       r2, r2, 0x08          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$517	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$517, DW_AT_low_pc(0x00)
	.dwattr $C$DW$517, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$508, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$508, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$508, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$508

	.sect	".text:dolbrac"
	.clink
	.global	||dolbrac||

$C$DW$518	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$518, DW_AT_name("dolbrac")
	.dwattr $C$DW$518, DW_AT_low_pc(||dolbrac||)
	.dwattr $C$DW$518, DW_AT_high_pc(0x00)
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("dolbrac")
	.dwattr $C$DW$518, DW_AT_external
	.dwattr $C$DW$518, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$518, DW_AT_TI_begin_line(0x42)
	.dwattr $C$DW$518, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$518, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$518, DW_AT_decl_line(0x42)
	.dwattr $C$DW$518, DW_AT_decl_column(0x06)
	.dwattr $C$DW$518, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 66,column 16,is_stmt,address ||dolbrac||,isa 0

	.dwfde $C$DW$CIE, ||dolbrac||

;***************************************************************
;* FNAME: dolbrac                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dolbrac||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/utilities.c",line 67,column 3,is_stmt,isa 0
        LDI       r1, ||ctx||           ; [ALU_PRU] |67| ctx
        LDI       r0, 0x0000            ; [ALU_PRU] |67| 
        LBBO      &r1, r1, 0, 4         ; [ALU_PRU] |67| 
        LBBO      &r1, r1, 4, 4         ; [ALU_PRU] |67| 
        SBBO      &r0, r1, 0, 4         ; [ALU_PRU] |67| 
$C$DW$519	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$519, DW_AT_low_pc(0x00)
	.dwattr $C$DW$519, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$518, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$518, DW_AT_TI_end_line(0x44)
	.dwattr $C$DW$518, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$518

	.sect	".text:dict_find"
	.clink
	.global	||dict_find||

$C$DW$520	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$520, DW_AT_name("dict_find")
	.dwattr $C$DW$520, DW_AT_low_pc(||dict_find||)
	.dwattr $C$DW$520, DW_AT_high_pc(0x00)
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("dict_find")
	.dwattr $C$DW$520, DW_AT_external
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$520, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$520, DW_AT_TI_begin_line(0x3c)
	.dwattr $C$DW$520, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$520, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$520, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$520, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$520, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/dict.c",line 60,column 44,is_stmt,address ||dict_find||,isa 0

	.dwfde $C$DW$CIE, ||dict_find||
$C$DW$521	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$521, DW_AT_name("len")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$521, DW_AT_location[DW_OP_regx 0x38]

$C$DW$522	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$522, DW_AT_name("name")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$522, DW_AT_location[DW_OP_regx 0x3c]


;***************************************************************
;* FNAME: dict_find                     FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           14 Auto,  0 SOE     *
;***************************************************************

||dict_find||:
;* --------------------------------------------------------------------------*
;* r1_0  assigned to $O$U30
;* r16_0 assigned to $O$U28
;* r0_2  assigned to $O$L1
;* r0_0  assigned to len
$C$DW$523	.dwtag  DW_TAG_variable
	.dwattr $C$DW$523, DW_AT_name("len")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$523, DW_AT_location[DW_OP_reg0]

;* r15_0 assigned to name
$C$DW$524	.dwtag  DW_TAG_variable
	.dwattr $C$DW$524, DW_AT_name("name")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$524, DW_AT_location[DW_OP_regx 0x3c]

;* r14_0 assigned to word_ptr
$C$DW$525	.dwtag  DW_TAG_variable
	.dwattr $C$DW$525, DW_AT_name("word_ptr")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("word_ptr")
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$525, DW_AT_location[DW_OP_regx 0x38]

;* r0_1  assigned to i
$C$DW$526	.dwtag  DW_TAG_variable
	.dwattr $C$DW$526, DW_AT_name("i")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$526, DW_AT_location[DW_OP_reg1]

$C$DW$527	.dwtag  DW_TAG_variable
	.dwattr $C$DW$527, DW_AT_name("word")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("word")
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_location[DW_OP_breg8 0]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/dict.c",line 62,column 21,is_stmt,isa 0
        LDI       r1, ||ctx||           ; [ALU_PRU] |62| ctx
	.dwpsn	file "src/dict.c",line 60,column 44,is_stmt,isa 0
        MOV       r0.b0, r14.b0         ; [ALU_PRU] |60| 
        SUB       r2, r2, 0x0e          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 14
	.dwpsn	file "src/dict.c",line 62,column 21,is_stmt,isa 0
        LBBO      &r1, r1, 0, 4         ; [ALU_PRU] |62| 
        LBBO      &r1, r1, 20, 4        ; [ALU_PRU] |62| 
        LBBO      &r14, r1, 0, 4        ; [ALU_PRU] |62| word_ptr
	.dwpsn	file "src/dict.c",line 65,column 10,is_stmt,isa 0
        JMP       ||$C$L38||            ; [ALU_PRU] |65| 
;* --------------------------------------------------------------------------*
||$C$L37||:    
        LBBO      &r14, r2, 0, 4        ; [ALU_PRU] $C$SP0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L38||
;* --------------------------------------------------------------------------*
||$C$L38||:    
        QBEQ      ||$C$L43||, r14, 0x00 ; [ALU_PRU] |65| word_ptr
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/dict.c",line 66,column 18,is_stmt,isa 0
        LBBO      &r16.b0, r14, 0, 14   ; [ALU_PRU] |66| word,word_ptr
        SBBO      &r16.b0, r2, 0, 14    ; [ALU_PRU] |66| $C$SP0,word
	.dwpsn	file "src/dict.c",line 67,column 5,is_stmt,isa 0
        MOV       r16, r0.b0            ; [ALU_PRU] |67| len
        QBBC      ||$C$L39||, r16, 0x07 ; [ALU_PRU] |67| 
;* --------------------------------------------------------------------------*
        FILL      &r16.b1, 3            ; [ALU_PRU] |67| 
;* --------------------------------------------------------------------------*
||$C$L39||:    
        LBBO      &r0.b1, r2, 9, 1      ; [ALU_PRU] $C$SP0
        QBNE      ||$C$L37||, r16, r0.b1 ; [ALU_PRU] |67| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/dict.c",line 69,column 19,is_stmt,isa 0
        MOV       r17, r0.b0            ; [ALU_PRU] |69| len
	.dwpsn	file "src/dict.c",line 69,column 12,is_stmt,isa 0
        LDI       r0.b1, 0x00           ; [ALU_PRU] |69| i
	.dwpsn	file "src/dict.c",line 69,column 19,is_stmt,isa 0
        LDI32     r16, 0x80000000       ; [ALU_PRU] |69| 
        QBBC      ||$C$L40||, r17, 0x07 ; [ALU_PRU] |69| 
;* --------------------------------------------------------------------------*
        FILL      &r17.b1, 3            ; [ALU_PRU] |69| 
;* --------------------------------------------------------------------------*
||$C$L40||:    
        XOR       r17, r17, r16         ; [ALU_PRU] |69| 
        QBLE      ||$C$L42||, r16, r17  ; [ALU_PRU] |69| 
;* --------------------------------------------------------------------------*
        MOV       r16, r15              ; [ALU_PRU] $O$U28,name
        LBBO      &r1, r2, 10, 4        ; [ALU_PRU] $C$SP0
	.dwpsn	file "src/dict.c",line 71,column 11,is_stmt,isa 0
        MOV       r0.b2, r0.b0          ; [ALU_PRU] |71| $O$L1,len
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L41||
;*
;*   Loop source line                : 69
;*   Loop closing brace source line  : 72
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 127
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L41||:    
        LBBO      &r0.b3, r1, 0, 1      ; [ALU_PRU] |71| $O$U30
        LBBO      &r17.b0, r16, 0, 1    ; [ALU_PRU] |71| $O$U28
        QBNE      ||$C$L42||, r0.b3, r17.b0 ; [ALU_PRU] |71| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/dict.c",line 69,column 28,is_stmt,isa 0
        ADD       r16, r16, 0x01        ; [ALU_PRU] |69| $O$U28,$O$U28
        SUB       r0.b2, r0.b2, 0x01    ; [ALU_PRU] |69| $O$L1,$O$L1
        ADD       r0.b1, r0.b1, 0x01    ; [ALU_PRU] |69| i,i
        ADD       r1, r1, 0x01          ; [ALU_PRU] |69| $O$U30,$O$U30
        QBNE      ||$C$L41||, r0.b2, 0x00 ; [ALU_PRU] |69| $O$L1
;* --------------------------------------------------------------------------*
||$C$L42||:    
	.dwpsn	file "src/dict.c",line 74,column 7,is_stmt,isa 0
        LBBO      &r0.b2, r14, 8, 1     ; [ALU_PRU] |74| word_ptr
        QBBC      ||$C$L44||, r0.b2, 0x02 ; [ALU_PRU] |74| 
;* --------------------------------------------------------------------------*
||$C$L43||:    
	.dwpsn	file "src/dict.c",line 85,column 3,is_stmt,isa 0
        ZERO      &r14, 4               ; [ALU_PRU] |85| 
        JMP       ||$C$L45||            ; [ALU_PRU] |85| 
;* --------------------------------------------------------------------------*
||$C$L44||:    
	.dwpsn	file "src/dict.c",line 78,column 7,is_stmt,isa 0
        QBNE      ||$C$L37||, r0.b0, r0.b1 ; [ALU_PRU] |78| i,len
;* --------------------------------------------------------------------------*
||$C$L45||:    
        ADD       r2, r2, 0x0e          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$520, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$520, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$520, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$520

	.sect	".text:dofind"
	.clink
	.global	||dofind||

$C$DW$529	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$529, DW_AT_name("dofind")
	.dwattr $C$DW$529, DW_AT_low_pc(||dofind||)
	.dwattr $C$DW$529, DW_AT_high_pc(0x00)
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("dofind")
	.dwattr $C$DW$529, DW_AT_external
	.dwattr $C$DW$529, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$529, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$529, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$529, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$529, DW_AT_decl_line(0x68)
	.dwattr $C$DW$529, DW_AT_decl_column(0x06)
	.dwattr $C$DW$529, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 104,column 15,is_stmt,address ||dofind||,isa 0

	.dwfde $C$DW$CIE, ||dofind||

;***************************************************************
;* FNAME: dofind                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dofind||:
;* --------------------------------------------------------------------------*
;* r18_0 assigned to $O$U6
;* r19_2 assigned to len
$C$DW$530	.dwtag  DW_TAG_variable
	.dwattr $C$DW$530, DW_AT_name("len")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$530, DW_AT_location[DW_OP_regx 0x4e]

;* r17_0 assigned to entry
$C$DW$531	.dwtag  DW_TAG_variable
	.dwattr $C$DW$531, DW_AT_name("entry")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("entry")
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$531, DW_AT_location[DW_OP_regx 0x44]

	.dwcfi	cfa_offset, 0
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/utilities.c",line 105,column 15,is_stmt,isa 0
$C$DW$532	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$532, DW_AT_low_pc(0x00)
	.dwattr $C$DW$532, DW_AT_name("forth_pop")
	.dwattr $C$DW$532, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |105| forth_pop
        MOV       r19.b2, r14.b0        ; [ALU_PRU] |105| len
	.dwpsn	file "src/utilities.c",line 106,column 13,is_stmt,isa 0
$C$DW$533	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$533, DW_AT_low_pc(0x00)
	.dwattr $C$DW$533, DW_AT_name("forth_pop")
	.dwattr $C$DW$533, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |106| forth_pop
        MOV       r15, r14              ; [ALU_PRU] |106| 
	.dwpsn	file "src/utilities.c",line 108,column 18,is_stmt,isa 0
        MOV       r14.b0, r19.b2        ; [ALU_PRU] |108| len
$C$DW$534	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$534, DW_AT_low_pc(0x00)
	.dwattr $C$DW$534, DW_AT_name("dict_find")
	.dwattr $C$DW$534, DW_AT_TI_call

        JAL       r3.w2, ||dict_find||  ; [ALU_PRU] |108| dict_find
	.dwpsn	file "src/utilities.c",line 109,column 3,is_stmt,isa 0
        ZERO      &r18, 4               ; [ALU_PRU] |109| 
	.dwpsn	file "src/utilities.c",line 108,column 18,is_stmt,isa 0
        MOV       r17, r14              ; [ALU_PRU] |108| entry
	.dwpsn	file "src/utilities.c",line 109,column 3,is_stmt,isa 0
        QBEQ      ||$C$L46||, r17, 0x00 ; [ALU_PRU] |109| entry
;* --------------------------------------------------------------------------*
        LDI       r18, 0x0001           ; [ALU_PRU] |109| 
;* --------------------------------------------------------------------------*
||$C$L46||:    
        QBNE      ||$C$L47||, r18, 0x00 ; [ALU_PRU] |109| $O$U6
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/utilities.c",line 110,column 5,is_stmt,isa 0
        MOV       r14, r15              ; [ALU_PRU] |110| 
$C$DW$535	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$535, DW_AT_low_pc(0x00)
	.dwattr $C$DW$535, DW_AT_name("forth_push")
	.dwattr $C$DW$535, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |110| forth_push
	.dwpsn	file "src/utilities.c",line 111,column 5,is_stmt,isa 0
        MOV       r14, r19.b2           ; [ALU_PRU] |111| len
	.dwpsn	file "src/utilities.c",line 112,column 3,is_stmt,isa 0
        JMP       ||$C$L48||            ; [ALU_PRU] |112| 
;* --------------------------------------------------------------------------*
||$C$L47||:    
	.dwpsn	file "src/utilities.c",line 113,column 5,is_stmt,isa 0
$C$DW$536	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$536, DW_AT_low_pc(0x00)
	.dwattr $C$DW$536, DW_AT_name("forth_push")
	.dwattr $C$DW$536, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |113| forth_push
	.dwpsn	file "src/utilities.c",line 114,column 5,is_stmt,isa 0
        LBBO      &r0.b0, r17, 8, 1     ; [ALU_PRU] |114| entry
        MOV       r0, r0.b0             ; [ALU_PRU] |114| 
        LSR       r0, r0, 0x01          ; [ALU_PRU] |114| 
        AND       r14, r0, 0x01         ; [ALU_PRU] |114| 
;* --------------------------------------------------------------------------*
||$C$L48||:    
$C$DW$537	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$537, DW_AT_low_pc(0x00)
	.dwattr $C$DW$537, DW_AT_name("forth_push")
	.dwattr $C$DW$537, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |114| forth_push
	.dwpsn	file "src/utilities.c",line 116,column 3,is_stmt,isa 0
        MOV       r14, r18              ; [ALU_PRU] |116| $O$U6
$C$DW$538	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$538, DW_AT_low_pc(0x00)
	.dwattr $C$DW$538, DW_AT_name("forth_push")
	.dwattr $C$DW$538, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |116| forth_push
$C$DW$539	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$539, DW_AT_low_pc(0x00)
	.dwattr $C$DW$539, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$529, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$529, DW_AT_TI_end_line(0x75)
	.dwattr $C$DW$529, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$529

	.sect	".text:doemit"
	.clink
	.global	||doemit||

$C$DW$540	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$540, DW_AT_name("doemit")
	.dwattr $C$DW$540, DW_AT_low_pc(||doemit||)
	.dwattr $C$DW$540, DW_AT_high_pc(0x00)
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("doemit")
	.dwattr $C$DW$540, DW_AT_external
	.dwattr $C$DW$540, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$540, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$540, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$540, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$540, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$540, DW_AT_decl_column(0x09)
	.dwattr $C$DW$540, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 126,column 18,is_stmt,address ||doemit||,isa 0

	.dwfde $C$DW$CIE, ||doemit||

;***************************************************************
;* FNAME: doemit                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||doemit||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/utilities.c",line 127,column 3,is_stmt,isa 0
$C$DW$541	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$541, DW_AT_low_pc(0x00)
	.dwattr $C$DW$541, DW_AT_name("forth_pop")
	.dwattr $C$DW$541, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |127| forth_pop
$C$DW$542	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$542, DW_AT_low_pc(0x00)
	.dwattr $C$DW$542, DW_AT_name("write_char")
	.dwattr $C$DW$542, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |127| write_char
$C$DW$543	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$543, DW_AT_low_pc(0x00)
	.dwattr $C$DW$543, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$540, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$540, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$540, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$540

	.sect	".text:docreate"
	.clink
	.global	||docreate||

$C$DW$544	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$544, DW_AT_name("docreate")
	.dwattr $C$DW$544, DW_AT_low_pc(||docreate||)
	.dwattr $C$DW$544, DW_AT_high_pc(0x00)
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("docreate")
	.dwattr $C$DW$544, DW_AT_external
	.dwattr $C$DW$544, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$544, DW_AT_TI_begin_line(0x22)
	.dwattr $C$DW$544, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$544, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$544, DW_AT_decl_line(0x22)
	.dwattr $C$DW$544, DW_AT_decl_column(0x06)
	.dwattr $C$DW$544, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/utilities.c",line 34,column 17,is_stmt,address ||docreate||,isa 0

	.dwfde $C$DW$CIE, ||docreate||

;***************************************************************
;* FNAME: docreate                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  2 SOE     *
;***************************************************************

||docreate||:
;* --------------------------------------------------------------------------*
;* r18_0 assigned to len
$C$DW$545	.dwtag  DW_TAG_variable
	.dwattr $C$DW$545, DW_AT_name("len")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$545, DW_AT_location[DW_OP_regx 0x48]

;* r17_0 assigned to cstr
$C$DW$546	.dwtag  DW_TAG_variable
	.dwattr $C$DW$546, DW_AT_name("cstr")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("cstr")
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$546, DW_AT_location[DW_OP_regx 0x44]

	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0x02          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 2
        SBBO      &r3.b2, r2, 0, 2      ; [ALU_PRU] 
	.dwcfi	save_reg_to_mem, 14, -2
	.dwcfi	save_reg_to_mem, 15, -1
	.dwpsn	file "src/utilities.c",line 35,column 15,is_stmt,isa 0
$C$DW$547	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$547, DW_AT_low_pc(0x00)
	.dwattr $C$DW$547, DW_AT_name("forth_pop")
	.dwattr $C$DW$547, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |35| forth_pop
        MOV       r18, r14              ; [ALU_PRU] |35| len
	.dwpsn	file "src/utilities.c",line 36,column 14,is_stmt,isa 0
$C$DW$548	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$548, DW_AT_low_pc(0x00)
	.dwattr $C$DW$548, DW_AT_name("forth_pop")
	.dwattr $C$DW$548, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |36| forth_pop
        MOV       r17, r14              ; [ALU_PRU] |36| cstr
	.dwpsn	file "src/utilities.c",line 37,column 18,is_stmt,isa 0
$C$DW$549	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$549, DW_AT_low_pc(0x00)
	.dwattr $C$DW$549, DW_AT_name("forth_alloc_var")
	.dwattr $C$DW$549, DW_AT_TI_call

        JAL       r3.w2, ||forth_alloc_var|| ; [ALU_PRU] |37| forth_alloc_var
        MOV       r16, r14              ; [ALU_PRU] |37| 
	.dwpsn	file "src/utilities.c",line 39,column 18,is_stmt,isa 0
        LDI       r14.b0, 0x04          ; [ALU_PRU] |39| 
        MOV       r14.b1, r18.b0        ; [ALU_PRU] |39| len
        MOV       r15, r17              ; [ALU_PRU] |39| cstr
$C$DW$550	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$550, DW_AT_low_pc(0x00)
	.dwattr $C$DW$550, DW_AT_name("dict_create")
	.dwattr $C$DW$550, DW_AT_TI_call

        JAL       r3.w2, ||dict_create|| ; [ALU_PRU] |39| dict_create
	.dwpsn	file "src/utilities.c",line 40,column 3,is_stmt,isa 0
$C$DW$551	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$551, DW_AT_low_pc(0x00)
	.dwattr $C$DW$551, DW_AT_name("forth_push")
	.dwattr $C$DW$551, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |40| forth_push
        LBBO      &r3.b2, r2, 0, 2      ; [ALU_PRU] 
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
        ADD       r2, r2, 0x02          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 0
$C$DW$552	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$552, DW_AT_low_pc(0x00)
	.dwattr $C$DW$552, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$544, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$544, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$544, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$544

	.sect	".text:docomma"
	.clink
	.global	||docomma||

$C$DW$553	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$553, DW_AT_name("docomma")
	.dwattr $C$DW$553, DW_AT_low_pc(||docomma||)
	.dwattr $C$DW$553, DW_AT_high_pc(0x00)
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("docomma")
	.dwattr $C$DW$553, DW_AT_external
	.dwattr $C$DW$553, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$553, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$553, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$553, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$553, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$553, DW_AT_decl_column(0x06)
	.dwattr $C$DW$553, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 45,column 16,is_stmt,address ||docomma||,isa 0

	.dwfde $C$DW$CIE, ||docomma||

;***************************************************************
;* FNAME: docomma                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||docomma||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        MOV       r16.w0, r3.w2         ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 64
	.dwcfi	save_reg_to_reg, 15, 65
	.dwpsn	file "src/utilities.c",line 46,column 3,is_stmt,isa 0
$C$DW$554	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$554, DW_AT_low_pc(0x00)
	.dwattr $C$DW$554, DW_AT_name("forth_pop")
	.dwattr $C$DW$554, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |46| forth_pop
        LDI       r0, ||ctx||           ; [ALU_PRU] |46| ctx
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |46| 
        LBBO      &r0, r0, 16, 4        ; [ALU_PRU] |46| 
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |46| 
        SBBO      &r14, r0, 0, 4        ; [ALU_PRU] |46| 
	.dwpsn	file "src/utilities.c",line 48,column 3,is_stmt,isa 0
$C$DW$555	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$555, DW_AT_low_pc(0x00)
	.dwattr $C$DW$555, DW_AT_name("forth_alloc_var")
	.dwattr $C$DW$555, DW_AT_TI_call

        JAL       r3.w2, ||forth_alloc_var|| ; [ALU_PRU] |48| forth_alloc_var
$C$DW$556	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$556, DW_AT_low_pc(0x00)
	.dwattr $C$DW$556, DW_AT_TI_return

        JMP       r16.w0                ; [ALU_PRU] 
	.dwattr $C$DW$553, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$553, DW_AT_TI_end_line(0x31)
	.dwattr $C$DW$553, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$553

	.sect	".text:docolon"
	.clink
	.global	||docolon||

$C$DW$557	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$557, DW_AT_name("docolon")
	.dwattr $C$DW$557, DW_AT_low_pc(||docolon||)
	.dwattr $C$DW$557, DW_AT_high_pc(0x00)
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("docolon")
	.dwattr $C$DW$557, DW_AT_external
	.dwattr $C$DW$557, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$557, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$557, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$557, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x19)
	.dwattr $C$DW$557, DW_AT_decl_column(0x01)
	.dwattr $C$DW$557, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 25,column 1,is_stmt,address ||docolon||,isa 0

	.dwfde $C$DW$CIE, ||docolon||
$C$DW$558	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$558, DW_AT_name("bpsp")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$558, DW_AT_location[DW_OP_regx 0x38]

$C$DW$559	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$559, DW_AT_name("psp")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$560	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$560, DW_AT_name("brsp")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_regx 0x40]

$C$DW$561	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$561, DW_AT_name("rsp")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_regx 0x44]

$C$DW$562	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$562, DW_AT_name("ip")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_regx 0x48]

$C$DW$563	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$563, DW_AT_name("x")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: docolon                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||docolon||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SBBO      &r18, r19, 0, 4
        ADD r18, r18, 4
        MOV       r19, r21
        JMP       ||next||
$C$DW$564	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$564, DW_AT_low_pc(0x00)
	.dwattr $C$DW$564, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$557, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$557, DW_AT_TI_end_line(0x19)
	.dwattr $C$DW$557, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$557

	.sect	".text:dict_cfa"
	.clink
	.global	||dict_cfa||

$C$DW$565	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$565, DW_AT_name("dict_cfa")
	.dwattr $C$DW$565, DW_AT_low_pc(||dict_cfa||)
	.dwattr $C$DW$565, DW_AT_high_pc(0x00)
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("dict_cfa")
	.dwattr $C$DW$565, DW_AT_external
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$565, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$565, DW_AT_TI_begin_line(0x6e)
	.dwattr $C$DW$565, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$565, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$565, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$565, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$565, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/dict.c",line 110,column 35,is_stmt,address ||dict_cfa||,isa 0

	.dwfde $C$DW$CIE, ||dict_cfa||
$C$DW$566	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$566, DW_AT_name("entry")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("entry")
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$566, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: dict_cfa                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dict_cfa||:
;* --------------------------------------------------------------------------*
;* r14_0 assigned to entry
$C$DW$567	.dwtag  DW_TAG_variable
	.dwattr $C$DW$567, DW_AT_name("entry")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("entry")
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$567, DW_AT_location[DW_OP_regx 0x38]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/dict.c",line 111,column 3,is_stmt,isa 0
        QBEQ      ||$C$L50||, r14, 0x00 ; [ALU_PRU] |111| entry
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/dict.c",line 116,column 7,is_stmt,isa 0
        LBBO      &r0.b0, r14, 8, 1     ; [ALU_PRU] |116| entry
        QBBC      ||$C$L49||, r0.b0, 0x03 ; [ALU_PRU] |116| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
        LBBO      &r14, r14, 4, 4       ; [ALU_PRU] |116| entry
$C$DW$568	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$568, DW_AT_low_pc(0x00)
	.dwattr $C$DW$568, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L49||:    
	.dwcfi	remember_state
        ADD       r14, r14, 0x04        ; [ALU_PRU] |116| entry
$C$DW$569	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$569, DW_AT_low_pc(0x00)
	.dwattr $C$DW$569, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L50||:    
	.dwpsn	file "src/dict.c",line 112,column 5,is_stmt,isa 0
        LDI       r1, ||ctx||           ; [ALU_PRU] |112| ctx
        LDI       r0, 0x0006            ; [ALU_PRU] |112| 
	.dwpsn	file "src/dict.c",line 113,column 5,is_stmt,isa 0
        ZERO      &r14, 4               ; [ALU_PRU] |113| 
	.dwpsn	file "src/dict.c",line 112,column 5,is_stmt,isa 0
        LBBO      &r1, r1, 0, 4         ; [ALU_PRU] |112| 
        LBBO      &r1, r1, 4, 4         ; [ALU_PRU] |112| 
        SBBO      &r0, r1, 4, 4         ; [ALU_PRU] |112| 
$C$DW$570	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$570, DW_AT_low_pc(0x00)
	.dwattr $C$DW$570, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$565, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$565, DW_AT_TI_end_line(0x7a)
	.dwattr $C$DW$565, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$565

	.sect	".text:docfa"
	.clink
	.global	||docfa||

$C$DW$571	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$571, DW_AT_name("docfa")
	.dwattr $C$DW$571, DW_AT_low_pc(||docfa||)
	.dwattr $C$DW$571, DW_AT_high_pc(0x00)
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("docfa")
	.dwattr $C$DW$571, DW_AT_external
	.dwattr $C$DW$571, DW_AT_TI_begin_file("src/utilities.c")
	.dwattr $C$DW$571, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$571, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$571, DW_AT_decl_file("src/utilities.c")
	.dwattr $C$DW$571, DW_AT_decl_line(0x78)
	.dwattr $C$DW$571, DW_AT_decl_column(0x06)
	.dwattr $C$DW$571, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/utilities.c",line 120,column 14,is_stmt,address ||docfa||,isa 0

	.dwfde $C$DW$CIE, ||docfa||

;***************************************************************
;* FNAME: docfa                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||docfa||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        MOV       r3.w0, r3.w2          ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 12
	.dwcfi	save_reg_to_reg, 15, 13
	.dwpsn	file "src/utilities.c",line 121,column 18,is_stmt,isa 0
$C$DW$572	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$572, DW_AT_low_pc(0x00)
	.dwattr $C$DW$572, DW_AT_name("forth_pop")
	.dwattr $C$DW$572, DW_AT_TI_call

        JAL       r3.w2, ||forth_pop||  ; [ALU_PRU] |121| forth_pop
	.dwpsn	file "src/utilities.c",line 122,column 3,is_stmt,isa 0
$C$DW$573	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$573, DW_AT_low_pc(0x00)
	.dwattr $C$DW$573, DW_AT_name("dict_cfa")
	.dwattr $C$DW$573, DW_AT_TI_call

        JAL       r3.w2, ||dict_cfa||   ; [ALU_PRU] |122| dict_cfa
$C$DW$574	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$574, DW_AT_low_pc(0x00)
	.dwattr $C$DW$574, DW_AT_name("forth_push")
	.dwattr $C$DW$574, DW_AT_TI_call

        JAL       r3.w2, ||forth_push|| ; [ALU_PRU] |122| forth_push
$C$DW$575	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$575, DW_AT_low_pc(0x00)
	.dwattr $C$DW$575, DW_AT_TI_return

        JMP       r3.w0                 ; [ALU_PRU] 
	.dwattr $C$DW$571, DW_AT_TI_end_file("src/utilities.c")
	.dwattr $C$DW$571, DW_AT_TI_end_line(0x7b)
	.dwattr $C$DW$571, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$571

	.sect	".text:dict_print"
	.clink
	.global	||dict_print||

$C$DW$576	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$576, DW_AT_name("dict_print")
	.dwattr $C$DW$576, DW_AT_low_pc(||dict_print||)
	.dwattr $C$DW$576, DW_AT_high_pc(0x00)
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("dict_print")
	.dwattr $C$DW$576, DW_AT_external
	.dwattr $C$DW$576, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$576, DW_AT_TI_begin_line(0x7f)
	.dwattr $C$DW$576, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$576, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$576, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$576, DW_AT_decl_column(0x06)
	.dwattr $C$DW$576, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/dict.c",line 127,column 19,is_stmt,address ||dict_print||,isa 0

	.dwfde $C$DW$CIE, ||dict_print||

;***************************************************************
;* FNAME: dict_print                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dict_print||:
;* --------------------------------------------------------------------------*
;* r22_0 assigned to word_ptr
$C$DW$577	.dwtag  DW_TAG_variable
	.dwattr $C$DW$577, DW_AT_name("word_ptr")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("word_ptr")
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$577, DW_AT_location[DW_OP_regx 0x58]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/dict.c",line 129,column 21,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |129| ctx
        MOV       r23.w0, r3.w2         ; [ALU_PRU] 
	.dwcfi	save_reg_to_reg, 14, 92
	.dwcfi	save_reg_to_reg, 15, 93
        LBBO      &r0, r0, 0, 4         ; [ALU_PRU] |129| 
        LBBO      &r0, r0, 20, 4        ; [ALU_PRU] |129| 
        LBBO      &r22, r0, 0, 4        ; [ALU_PRU] |129| word_ptr
	.dwpsn	file "src/dict.c",line 132,column 10,is_stmt,isa 0
        JMP       ||$C$L52||            ; [ALU_PRU] |132| 
;* --------------------------------------------------------------------------*
||$C$L51||:    
	.dwpsn	file "src/dict.c",line 134,column 5,is_stmt,isa 0
        LDI       r14.b0, 0x06          ; [ALU_PRU] |134| 
        LDI32     r15, $C$SL40          ; [ALU_PRU] |134| 
$C$DW$578	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$578, DW_AT_low_pc(0x00)
	.dwattr $C$DW$578, DW_AT_name("write_str")
	.dwattr $C$DW$578, DW_AT_TI_call

        JAL       r3.w2, ||write_str||  ; [ALU_PRU] |134| write_str
	.dwpsn	file "src/dict.c",line 135,column 5,is_stmt,isa 0
        LBBO      &r14, r22, 4, 4       ; [ALU_PRU] |135| word_ptr
$C$DW$579	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$579, DW_AT_low_pc(0x00)
	.dwattr $C$DW$579, DW_AT_name("write_number")
	.dwattr $C$DW$579, DW_AT_TI_call

        JAL       r3.w2, ||write_number|| ; [ALU_PRU] |135| write_number
	.dwpsn	file "src/dict.c",line 136,column 5,is_stmt,isa 0
        LDI       r14.b0, 0x20          ; [ALU_PRU] |136| 
$C$DW$580	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$580, DW_AT_low_pc(0x00)
	.dwattr $C$DW$580, DW_AT_name("write_char")
	.dwattr $C$DW$580, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |136| write_char
	.dwpsn	file "src/dict.c",line 137,column 5,is_stmt,isa 0
        LBBO      &r14.b0, r22, 9, 1    ; [ALU_PRU] |137| word_ptr
        LBBO      &r15, r22, 10, 4      ; [ALU_PRU] |137| word_ptr
$C$DW$581	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$581, DW_AT_low_pc(0x00)
	.dwattr $C$DW$581, DW_AT_name("write_str")
	.dwattr $C$DW$581, DW_AT_TI_call

        JAL       r3.w2, ||write_str||  ; [ALU_PRU] |137| write_str
	.dwpsn	file "src/dict.c",line 138,column 5,is_stmt,isa 0
        LDI       r14.b0, 0x20          ; [ALU_PRU] |138| 
$C$DW$582	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$582, DW_AT_low_pc(0x00)
	.dwattr $C$DW$582, DW_AT_name("write_char")
	.dwattr $C$DW$582, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |138| write_char
	.dwpsn	file "src/dict.c",line 139,column 5,is_stmt,isa 0
        LBBO      &r0.b0, r22, 8, 1     ; [ALU_PRU] |139| word_ptr
        MOV       r14, r0.b0            ; [ALU_PRU] |139| 
$C$DW$583	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$583, DW_AT_low_pc(0x00)
	.dwattr $C$DW$583, DW_AT_name("write_number")
	.dwattr $C$DW$583, DW_AT_TI_call

        JAL       r3.w2, ||write_number|| ; [ALU_PRU] |139| write_number
	.dwpsn	file "src/dict.c",line 140,column 5,is_stmt,isa 0
        LDI       r14.b0, 0x0a          ; [ALU_PRU] |140| 
$C$DW$584	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$584, DW_AT_low_pc(0x00)
	.dwattr $C$DW$584, DW_AT_name("write_char")
	.dwattr $C$DW$584, DW_AT_TI_call

        JAL       r3.w2, ||write_char|| ; [ALU_PRU] |140| write_char
	.dwpsn	file "src/dict.c",line 142,column 5,is_stmt,isa 0
        LBBO      &r22, r22, 0, 4       ; [ALU_PRU] |142| word_ptr,word_ptr
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L52||
;* --------------------------------------------------------------------------*
||$C$L52||:    
	.dwpsn	file "src/dict.c",line 132,column 10,is_stmt,isa 0
        QBNE      ||$C$L51||, r22, 0x00 ; [ALU_PRU] |132| word_ptr
;* --------------------------------------------------------------------------*
$C$DW$585	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$585, DW_AT_low_pc(0x00)
	.dwattr $C$DW$585, DW_AT_TI_return

        JMP       r23.w0                ; [ALU_PRU] 
	.dwattr $C$DW$576, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$576, DW_AT_TI_end_line(0x91)
	.dwattr $C$DW$576, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$576

	.sect	".text:dict_lookup"
	.clink
	.global	||dict_lookup||

$C$DW$586	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$586, DW_AT_name("dict_lookup")
	.dwattr $C$DW$586, DW_AT_low_pc(||dict_lookup||)
	.dwattr $C$DW$586, DW_AT_high_pc(0x00)
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("dict_lookup")
	.dwattr $C$DW$586, DW_AT_external
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$586, DW_AT_TI_begin_file("src/dict.c")
	.dwattr $C$DW$586, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$586, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$586, DW_AT_decl_file("src/dict.c")
	.dwattr $C$DW$586, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$586, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$586, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/dict.c",line 90,column 37,is_stmt,address ||dict_lookup||,isa 0

	.dwfde $C$DW$CIE, ||dict_lookup||
$C$DW$587	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$587, DW_AT_name("addr")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$587, DW_AT_location[DW_OP_regx 0x38]


;***************************************************************
;* FNAME: dict_lookup                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||dict_lookup||:
;* --------------------------------------------------------------------------*
;* r0_0  assigned to addr
$C$DW$588	.dwtag  DW_TAG_variable
	.dwattr $C$DW$588, DW_AT_name("addr")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("addr")
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$588, DW_AT_location[DW_OP_reg0]

;* r14_0 assigned to word_ptr
$C$DW$589	.dwtag  DW_TAG_variable
	.dwattr $C$DW$589, DW_AT_name("word_ptr")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("word_ptr")
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$589, DW_AT_location[DW_OP_regx 0x38]

;* r15_0 assigned to word
$C$DW$590	.dwtag  DW_TAG_variable
	.dwattr $C$DW$590, DW_AT_name("word")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("word")
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_location[DW_OP_regx 0x3c]

	.dwcfi	cfa_offset, 0
	.dwpsn	file "src/dict.c",line 92,column 21,is_stmt,isa 0
        LDI       r1, ||ctx||           ; [ALU_PRU] |92| ctx
	.dwpsn	file "src/dict.c",line 90,column 37,is_stmt,isa 0
        MOV       r0, r14               ; [ALU_PRU] |90| addr
	.dwpsn	file "src/dict.c",line 92,column 21,is_stmt,isa 0
        LBBO      &r1, r1, 0, 4         ; [ALU_PRU] |92| 
        LBBO      &r1, r1, 20, 4        ; [ALU_PRU] |92| 
        LBBO      &r14, r1, 0, 4        ; [ALU_PRU] |92| word_ptr
	.dwpsn	file "src/dict.c",line 95,column 10,is_stmt,isa 0
        JMP       ||$C$L55||            ; [ALU_PRU] |95| 
;* --------------------------------------------------------------------------*
||$C$L53||:    
	.dwpsn	file "src/dict.c",line 96,column 18,is_stmt,isa 0
        LBBO      &r15.b0, r14, 0, 14   ; [ALU_PRU] |96| word,word_ptr
	.dwpsn	file "src/dict.c",line 98,column 5,is_stmt,isa 0
        QBNE      ||$C$L54||, r0, r16   ; [ALU_PRU] |98| addr
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
$C$DW$591	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$591, DW_AT_low_pc(0x00)
	.dwattr $C$DW$591, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L54||:    
	.dwpsn	file "src/dict.c",line 103,column 5,is_stmt,isa 0
        MOV       r14, r15              ; [ALU_PRU] |103| word_ptr,word
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L55||
;* --------------------------------------------------------------------------*
||$C$L55||:    
	.dwpsn	file "src/dict.c",line 95,column 10,is_stmt,isa 0
        QBNE      ||$C$L53||, r14, 0x00 ; [ALU_PRU] |95| word_ptr
;* --------------------------------------------------------------------------*
	.dwpsn	file "src/dict.c",line 105,column 3,is_stmt,isa 0
        ZERO      &r14, 4               ; [ALU_PRU] |105| 
$C$DW$592	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$592, DW_AT_low_pc(0x00)
	.dwattr $C$DW$592, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$586, DW_AT_TI_end_file("src/dict.c")
	.dwattr $C$DW$586, DW_AT_TI_end_line(0x6a)
	.dwattr $C$DW$586, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$586

	.sect	".text:create"
	.clink
	.global	||create||

$C$DW$593	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$593, DW_AT_name("create")
	.dwattr $C$DW$593, DW_AT_low_pc(||create||)
	.dwattr $C$DW$593, DW_AT_high_pc(0x00)
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("create")
	.dwattr $C$DW$593, DW_AT_external
	.dwattr $C$DW$593, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$593, DW_AT_TI_begin_line(0x1f)
	.dwattr $C$DW$593, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$593, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$593, DW_AT_decl_column(0x01)
	.dwattr $C$DW$593, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 31,column 1,is_stmt,address ||create||,isa 0

	.dwfde $C$DW$CIE, ||create||
$C$DW$594	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$594, DW_AT_name("bpsp")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$594, DW_AT_location[DW_OP_regx 0x38]

$C$DW$595	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$595, DW_AT_name("psp")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$595, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$596	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$596, DW_AT_name("brsp")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$596, DW_AT_location[DW_OP_regx 0x40]

$C$DW$597	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$597, DW_AT_name("rsp")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$597, DW_AT_location[DW_OP_regx 0x44]

$C$DW$598	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$598, DW_AT_name("ip")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$598, DW_AT_location[DW_OP_regx 0x48]

$C$DW$599	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$599, DW_AT_name("x")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$599, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: create                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||create||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||docreate||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$600	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$600, DW_AT_low_pc(0x00)
	.dwattr $C$DW$600, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$593, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$593, DW_AT_TI_end_line(0x1f)
	.dwattr $C$DW$593, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$593

	.sect	".text:comma"
	.clink
	.global	||comma||

$C$DW$601	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$601, DW_AT_name("comma")
	.dwattr $C$DW$601, DW_AT_low_pc(||comma||)
	.dwattr $C$DW$601, DW_AT_high_pc(0x00)
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("comma")
	.dwattr $C$DW$601, DW_AT_external
	.dwattr $C$DW$601, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$601, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$601, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$601, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x20)
	.dwattr $C$DW$601, DW_AT_decl_column(0x01)
	.dwattr $C$DW$601, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 32,column 1,is_stmt,address ||comma||,isa 0

	.dwfde $C$DW$CIE, ||comma||
$C$DW$602	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$602, DW_AT_name("bpsp")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$602, DW_AT_location[DW_OP_regx 0x38]

$C$DW$603	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$603, DW_AT_name("psp")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$603, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$604	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$604, DW_AT_name("brsp")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$604, DW_AT_location[DW_OP_regx 0x40]

$C$DW$605	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$605, DW_AT_name("rsp")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$605, DW_AT_location[DW_OP_regx 0x44]

$C$DW$606	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$606, DW_AT_name("ip")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$606, DW_AT_location[DW_OP_regx 0x48]

$C$DW$607	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$607, DW_AT_name("x")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$607, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: comma                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||comma||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||docomma||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$608	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$608, DW_AT_low_pc(0x00)
	.dwattr $C$DW$608, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$601, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$601, DW_AT_TI_end_line(0x20)
	.dwattr $C$DW$601, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$601

	.sect	".text:cfa"
	.clink
	.global	||cfa||

$C$DW$609	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$609, DW_AT_name("cfa")
	.dwattr $C$DW$609, DW_AT_low_pc(||cfa||)
	.dwattr $C$DW$609, DW_AT_high_pc(0x00)
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("cfa")
	.dwattr $C$DW$609, DW_AT_external
	.dwattr $C$DW$609, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$609, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$609, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$609, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x28)
	.dwattr $C$DW$609, DW_AT_decl_column(0x01)
	.dwattr $C$DW$609, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 40,column 1,is_stmt,address ||cfa||,isa 0

	.dwfde $C$DW$CIE, ||cfa||
$C$DW$610	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$610, DW_AT_name("bpsp")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$610, DW_AT_location[DW_OP_regx 0x38]

$C$DW$611	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$611, DW_AT_name("psp")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$611, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$612	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$612, DW_AT_name("brsp")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$612, DW_AT_location[DW_OP_regx 0x40]

$C$DW$613	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$613, DW_AT_name("rsp")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$613, DW_AT_location[DW_OP_regx 0x44]

$C$DW$614	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$614, DW_AT_name("ip")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$614, DW_AT_location[DW_OP_regx 0x48]

$C$DW$615	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$615, DW_AT_name("x")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$615, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: cfa                           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||cfa||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r20, ||docfa||
        JAL      r3.w2, ||call00||
        JMP       ||next||
$C$DW$616	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$616, DW_AT_low_pc(0x00)
	.dwattr $C$DW$616, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$609, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$609, DW_AT_TI_end_line(0x28)
	.dwattr $C$DW$609, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$609

	.sect	".text:call00"
	.clink
	.global	||call00||

$C$DW$617	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$617, DW_AT_name("call00")
	.dwattr $C$DW$617, DW_AT_low_pc(||call00||)
	.dwattr $C$DW$617, DW_AT_high_pc(0x00)
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("call00")
	.dwattr $C$DW$617, DW_AT_external
	.dwattr $C$DW$617, DW_AT_TI_begin_file("src/xmacros.inner.h")
	.dwattr $C$DW$617, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$617, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$617, DW_AT_decl_file("src/xmacros.inner.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x54)
	.dwattr $C$DW$617, DW_AT_decl_column(0x01)
	.dwattr $C$DW$617, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.inner.h",line 84,column 1,is_stmt,address ||call00||,isa 0

	.dwfde $C$DW$CIE, ||call00||
$C$DW$618	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$618, DW_AT_name("bpsp")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$618, DW_AT_location[DW_OP_regx 0x38]

$C$DW$619	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$619, DW_AT_name("psp")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$619, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$620	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$620, DW_AT_name("brsp")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$620, DW_AT_location[DW_OP_regx 0x40]

$C$DW$621	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$621, DW_AT_name("rsp")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$621, DW_AT_location[DW_OP_regx 0x44]

$C$DW$622	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$622, DW_AT_name("ip")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$622, DW_AT_location[DW_OP_regx 0x48]

$C$DW$623	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$623, DW_AT_name("x")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$623, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: call00                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||call00||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LDI       r23, ||ctx_psp||
        SBBO      &r23, r16, 0, 4
        LDI       r23, ||ctx_rsp||
        SBBO      &r23, r18, 0, 4
        LDI       r23, ||ctx_regs||
        SBBO      &r23, r19, 8, 4
        SBBO      &r23, r20, 4, 4
        SBBO      &r23, r21, 0, 4
        JAL      r3.w2, r20
        LDI       r23, ||ctx_psp||
        LBBO      &r16, r23, 0, 4
        LBBO      &r15, r23, 4, 4
        LDI       r23, ||ctx_rsp||
        LBBO      &r18, r23, 0, 4
        LBBO      &r17, r23, 4, 4
        LDI       r23, ||ctx_regs||
        LBBO      &r19, r23, 8, 4
        LBBO      &r20, r23, 4, 4
        LBBO      &r21, r23, 0, 4
$C$DW$624	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$624, DW_AT_low_pc(0x00)
	.dwattr $C$DW$624, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$617, DW_AT_TI_end_file("src/xmacros.inner.h")
	.dwattr $C$DW$617, DW_AT_TI_end_line(0x54)
	.dwattr $C$DW$617, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$617

	.sect	".text:branch"
	.clink
	.global	||branch||

$C$DW$625	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$625, DW_AT_name("branch")
	.dwattr $C$DW$625, DW_AT_low_pc(||branch||)
	.dwattr $C$DW$625, DW_AT_high_pc(0x00)
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("branch")
	.dwattr $C$DW$625, DW_AT_external
	.dwattr $C$DW$625, DW_AT_TI_begin_file("src/xmacros.outer.h")
	.dwattr $C$DW$625, DW_AT_TI_begin_line(0x3b)
	.dwattr $C$DW$625, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$625, DW_AT_decl_file("src/xmacros.outer.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$625, DW_AT_decl_column(0x01)
	.dwattr $C$DW$625, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "src/xmacros.outer.h",line 59,column 1,is_stmt,address ||branch||,isa 0

	.dwfde $C$DW$CIE, ||branch||
$C$DW$626	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$626, DW_AT_name("bpsp")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("bpsp")
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$626, DW_AT_location[DW_OP_regx 0x38]

$C$DW$627	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$627, DW_AT_name("psp")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$627, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$628	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$628, DW_AT_name("brsp")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("brsp")
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$628, DW_AT_location[DW_OP_regx 0x40]

$C$DW$629	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$629, DW_AT_name("rsp")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$629, DW_AT_location[DW_OP_regx 0x44]

$C$DW$630	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$630, DW_AT_name("ip")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$630, DW_AT_location[DW_OP_regx 0x48]

$C$DW$631	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$631, DW_AT_name("x")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$631, DW_AT_location[DW_OP_regx 0x4c]


;***************************************************************
;* FNAME: branch                        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

||branch||:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        LBBO      &r20, r19, 0, 4
        add       r19, r19, r20
        JMP       ||next||
$C$DW$632	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$632, DW_AT_low_pc(0x00)
	.dwattr $C$DW$632, DW_AT_TI_return

        JMP       r3.w2                 ; [ALU_PRU] 
	.dwattr $C$DW$625, DW_AT_TI_end_file("src/xmacros.outer.h")
	.dwattr $C$DW$625, DW_AT_TI_end_line(0x3b)
	.dwattr $C$DW$625, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$625

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".rodata:.string"
||$C$SL1||:	.string	"docolon",0
||$C$SL2||:	.string	"semi",0
||$C$SL3||:	.string	"execs",0
||$C$SL4||:	.string	"runs",0
||$C$SL5||:	.string	"quits",0
||$C$SL6||:	.string	"call00",0
||$C$SL7||:	.string	"@",0
||$C$SL8||:	.string	"!",0
||$C$SL9||:	.string	"drop",0
||$C$SL10||:	.string	"dup",0
||$C$SL11||:	.string	"swap",0
||$C$SL12||:	.string	"rot",0
||$C$SL13||:	.string	"+",0
||$C$SL14||:	.string	"-",0
||$C$SL15||:	.string	"=",0
||$C$SL16||:	.string	"^",0
||$C$SL17||:	.string	"lit",0
||$C$SL18||:	.string	"'",0
||$C$SL19||:	.string	"STATE",0
||$C$SL20||:	.string	"HERE",0
||$C$SL21||:	.string	"create",0
||$C$SL22||:	.string	",",0
||$C$SL23||:	.string	"[",0
||$C$SL24||:	.string	"]",0
||$C$SL25||:	.string	"xmask",0
||$C$SL26||:	.string	"word",0
||$C$SL27||:	.string	"number",0
||$C$SL28||:	.string	"find",0
||$C$SL29||:	.string	"cfa",0
||$C$SL30||:	.string	"emit",0
||$C$SL31||:	.string	"ret",0
||$C$SL32||:	.string	"immed",0
||$C$SL33||:	.string	"branch",0
||$C$SL34||:	.string	"0branch",0
||$C$SL35||:	.string	":",0
||$C$SL36||:	.string	";",0
||$C$SL37||:	.string	"itpnum",0
||$C$SL38||:	.string	"itpnext",0
||$C$SL39||:	.string	"interpret",0
||$C$SL40||:	.string	"DICT: ",0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	||calloc||
	.global	||memcpy||

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

$C$DW$T$46	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$3)

$C$DW$T$47	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$2)

$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x20)

$C$DW$T$49	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("int8_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/include/stdint.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x1d)

$C$DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/include/stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1c)

$C$DW$T$79	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$26)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x04)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/include/stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1a)

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("fcell_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("src/beagle-pru/forthwith-pru-consts.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x08)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x12)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("X_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x13)

$C$DW$T$116	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$55)

$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)

$C$DW$T$117	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$23)

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("fcell_xt")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x12)

$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)

$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)

$C$DW$T$120	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$25)


$C$DW$T$122	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x10)
$C$DW$633	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$633, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$122


$C$DW$T$123	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x28)
$C$DW$634	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$634, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$123


$C$DW$T$124	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x30)
$C$DW$635	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$635, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$124


$C$DW$T$125	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x50)
$C$DW$636	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$636, DW_AT_upper_bound(0x13)

	.dwendtag $C$DW$T$125


$C$DW$T$126	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x4c)
$C$DW$637	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$637, DW_AT_upper_bound(0x12)

	.dwendtag $C$DW$T$126


$C$DW$T$127	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x2c)
$C$DW$638	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$638, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$127


$C$DW$T$128	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x08)
$C$DW$639	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$639, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$128

$C$DW$T$129	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$24)


$C$DW$T$130	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x10)
$C$DW$640	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$640, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$130


$C$DW$T$131	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x28)
$C$DW$641	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$641, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$131


$C$DW$T$132	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x30)
$C$DW$642	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$642, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$132


$C$DW$T$133	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x50)
$C$DW$643	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$643, DW_AT_upper_bound(0x13)

	.dwendtag $C$DW$T$133


$C$DW$T$134	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x4c)
$C$DW$644	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$644, DW_AT_upper_bound(0x12)

	.dwendtag $C$DW$T$134


$C$DW$T$135	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x2c)
$C$DW$645	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$645, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$135

$C$DW$T$139	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$22)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("size_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/include/stddef.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x19)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x20)

$C$DW$T$110	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$110, DW_AT_address_class(0x20)

$C$DW$T$140	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$110)

$C$DW$T$142	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$28)

$C$DW$T$143	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$6)


$C$DW$T$144	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x11)
$C$DW$646	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$646, DW_AT_upper_bound(0x10)

	.dwendtag $C$DW$T$144

$C$DW$T$145	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$145, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$145, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x01)


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("forth_word")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0e)
$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$647, DW_AT_name("prev")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("prev")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x67)
	.dwattr $C$DW$647, DW_AT_decl_column(0x0c)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$648, DW_AT_name("body")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("body")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x68)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0d)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$649, DW_AT_name("meta")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("meta")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x69)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0b)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$650, DW_AT_name("len")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0b)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$651, DW_AT_name("name")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$651, DW_AT_decl_column(0x09)

	.dwattr $C$DW$T$29, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$29

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("fword_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1b)

$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)

$C$DW$T$160	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$20)


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("forthwith_context")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x1c)
$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$652, DW_AT_name("regs")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("regs")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x52)
	.dwattr $C$DW$652, DW_AT_decl_column(0x12)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$653, DW_AT_name("vars")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("vars")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x53)
	.dwattr $C$DW$653, DW_AT_decl_column(0x12)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$654, DW_AT_name("psp")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x54)
	.dwattr $C$DW$654, DW_AT_decl_column(0x13)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$655, DW_AT_name("rsp")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x55)
	.dwattr $C$DW$655, DW_AT_decl_column(0x13)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$656, DW_AT_name("user")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("user")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x56)
	.dwattr $C$DW$656, DW_AT_decl_column(0x13)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$657, DW_AT_name("dict")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("dict")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x57)
	.dwattr $C$DW$657, DW_AT_decl_column(0x18)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$658, DW_AT_name("strings")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("strings")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x58)
	.dwattr $C$DW$658, DW_AT_decl_column(0x17)

	.dwattr $C$DW$T$40, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$40

$C$DW$T$163	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$163, DW_AT_name("fw_ctx_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x03)

$C$DW$T$164	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$164, DW_AT_address_class(0x20)


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("forthwith_dict_stack")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x0c)
$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$659, DW_AT_name("head")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("head")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x46)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$660, DW_AT_name("base")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x47)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0c)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$661, DW_AT_name("size")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x48)
	.dwattr $C$DW$661, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$41, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$41

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("fw_ctx_dict_stack_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("forthwith_regs")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x10)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$662, DW_AT_name("w")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("w")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x29)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0b)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$663, DW_AT_name("x")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$663, DW_AT_decl_column(0x0b)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$664, DW_AT_name("ip")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0b)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$665, DW_AT_name("tos")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("tos")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$42, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$42

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("fw_ctx_regs_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x03)

$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("forthwith_stack")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x0c)
$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$666, DW_AT_name("head")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("head")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x40)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$667, DW_AT_name("base")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x41)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0c)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$668, DW_AT_name("size")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x42)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$43, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$43

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("fw_ctx_stack_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("forthwith_str_stack")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x0c)
$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$669, DW_AT_name("head")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("head")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$669, DW_AT_decl_column(0x09)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$670, DW_AT_name("base")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$670, DW_AT_decl_column(0x09)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$671, DW_AT_name("size")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$671, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$44, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$44

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("fw_ctx_str_stack_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x03)

$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x20)


$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("forthwith_vars")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x20)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$672, DW_AT_name("state")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("state")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x33)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0b)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$673, DW_AT_name("error")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("error")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x34)
	.dwattr $C$DW$673, DW_AT_decl_column(0x0b)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$674, DW_AT_name("tib_idx")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("tib_idx")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x36)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0b)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$675, DW_AT_name("tib_len")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("tib_len")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x37)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0b)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$676, DW_AT_name("tib_str")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("tib_str")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x38)
	.dwattr $C$DW$676, DW_AT_decl_column(0x0b)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$677, DW_AT_name("tob_idx")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("tob_idx")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0b)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$678, DW_AT_name("tob_len")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("tob_len")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0b)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$679, DW_AT_name("tob_str")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("tob_str")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$679, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$45, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$45

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("fw_ctx_vars_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 8
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 16
	.dwcfi	same_value, 17
	.dwcfi	same_value, 18
	.dwcfi	same_value, 19
	.dwcfi	same_value, 20
	.dwcfi	same_value, 21
	.dwcfi	same_value, 22
	.dwcfi	same_value, 23
	.dwcfi	same_value, 24
	.dwcfi	same_value, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	same_value, 33
	.dwcfi	same_value, 34
	.dwcfi	same_value, 35
	.dwcfi	same_value, 36
	.dwcfi	same_value, 37
	.dwcfi	same_value, 38
	.dwcfi	same_value, 39
	.dwcfi	same_value, 40
	.dwcfi	same_value, 41
	.dwcfi	same_value, 42
	.dwcfi	same_value, 43
	.dwcfi	same_value, 44
	.dwcfi	same_value, 45
	.dwcfi	same_value, 46
	.dwcfi	same_value, 47
	.dwcfi	same_value, 48
	.dwcfi	same_value, 49
	.dwcfi	same_value, 50
	.dwcfi	same_value, 51
	.dwcfi	same_value, 52
	.dwcfi	same_value, 53
	.dwcfi	same_value, 54
	.dwcfi	same_value, 55
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$680	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$680, DW_AT_name("R0_b0")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_reg0]

$C$DW$681	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$681, DW_AT_name("R0_b1")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_reg1]

$C$DW$682	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$682, DW_AT_name("R0_b2")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_reg2]

$C$DW$683	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$683, DW_AT_name("R0_b3")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_reg3]

$C$DW$684	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$684, DW_AT_name("R1_b0")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_reg4]

$C$DW$685	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$685, DW_AT_name("R1_b1")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_reg5]

$C$DW$686	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$686, DW_AT_name("R1_b2")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_reg6]

$C$DW$687	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$687, DW_AT_name("R1_b3")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_reg7]

$C$DW$688	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$688, DW_AT_name("R2_b0")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_reg8]

$C$DW$689	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$689, DW_AT_name("R2_b1")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_reg9]

$C$DW$690	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$690, DW_AT_name("R2_b2")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_reg10]

$C$DW$691	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$691, DW_AT_name("R2_b3")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_reg11]

$C$DW$692	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$692, DW_AT_name("R3_b0")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_reg12]

$C$DW$693	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$693, DW_AT_name("R3_b1")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_reg13]

$C$DW$694	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$694, DW_AT_name("R3_b2")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_reg14]

$C$DW$695	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$695, DW_AT_name("R3_b3")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_reg15]

$C$DW$696	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$696, DW_AT_name("R4_b0")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_reg16]

$C$DW$697	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$697, DW_AT_name("R4_b1")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_reg17]

$C$DW$698	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$698, DW_AT_name("R4_b2")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_reg18]

$C$DW$699	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$699, DW_AT_name("R4_b3")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_reg19]

$C$DW$700	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$700, DW_AT_name("R5_b0")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_reg20]

$C$DW$701	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$701, DW_AT_name("R5_b1")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_reg21]

$C$DW$702	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$702, DW_AT_name("R5_b2")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_reg22]

$C$DW$703	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$703, DW_AT_name("R5_b3")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_reg23]

$C$DW$704	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$704, DW_AT_name("R6_b0")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_reg24]

$C$DW$705	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$705, DW_AT_name("R6_b1")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_reg25]

$C$DW$706	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$706, DW_AT_name("R6_b2")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_reg26]

$C$DW$707	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$707, DW_AT_name("R6_b3")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_reg27]

$C$DW$708	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$708, DW_AT_name("R7_b0")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_reg28]

$C$DW$709	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$709, DW_AT_name("R7_b1")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_reg29]

$C$DW$710	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$710, DW_AT_name("R7_b2")
	.dwattr $C$DW$710, DW_AT_location[DW_OP_reg30]

$C$DW$711	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$711, DW_AT_name("R7_b3")
	.dwattr $C$DW$711, DW_AT_location[DW_OP_reg31]

$C$DW$712	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$712, DW_AT_name("R8_b0")
	.dwattr $C$DW$712, DW_AT_location[DW_OP_regx 0x20]

$C$DW$713	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$713, DW_AT_name("R8_b1")
	.dwattr $C$DW$713, DW_AT_location[DW_OP_regx 0x21]

$C$DW$714	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$714, DW_AT_name("R8_b2")
	.dwattr $C$DW$714, DW_AT_location[DW_OP_regx 0x22]

$C$DW$715	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$715, DW_AT_name("R8_b3")
	.dwattr $C$DW$715, DW_AT_location[DW_OP_regx 0x23]

$C$DW$716	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$716, DW_AT_name("R9_b0")
	.dwattr $C$DW$716, DW_AT_location[DW_OP_regx 0x24]

$C$DW$717	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$717, DW_AT_name("R9_b1")
	.dwattr $C$DW$717, DW_AT_location[DW_OP_regx 0x25]

$C$DW$718	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$718, DW_AT_name("R9_b2")
	.dwattr $C$DW$718, DW_AT_location[DW_OP_regx 0x26]

$C$DW$719	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$719, DW_AT_name("R9_b3")
	.dwattr $C$DW$719, DW_AT_location[DW_OP_regx 0x27]

$C$DW$720	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$720, DW_AT_name("R10_b0")
	.dwattr $C$DW$720, DW_AT_location[DW_OP_regx 0x28]

$C$DW$721	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$721, DW_AT_name("R10_b1")
	.dwattr $C$DW$721, DW_AT_location[DW_OP_regx 0x29]

$C$DW$722	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$722, DW_AT_name("R10_b2")
	.dwattr $C$DW$722, DW_AT_location[DW_OP_regx 0x2a]

$C$DW$723	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$723, DW_AT_name("R10_b3")
	.dwattr $C$DW$723, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$724	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$724, DW_AT_name("R11_b0")
	.dwattr $C$DW$724, DW_AT_location[DW_OP_regx 0x2c]

$C$DW$725	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$725, DW_AT_name("R11_b1")
	.dwattr $C$DW$725, DW_AT_location[DW_OP_regx 0x2d]

$C$DW$726	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$726, DW_AT_name("R11_b2")
	.dwattr $C$DW$726, DW_AT_location[DW_OP_regx 0x2e]

$C$DW$727	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$727, DW_AT_name("R11_b3")
	.dwattr $C$DW$727, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$728	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$728, DW_AT_name("R12_b0")
	.dwattr $C$DW$728, DW_AT_location[DW_OP_regx 0x30]

$C$DW$729	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$729, DW_AT_name("R12_b1")
	.dwattr $C$DW$729, DW_AT_location[DW_OP_regx 0x31]

$C$DW$730	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$730, DW_AT_name("R12_b2")
	.dwattr $C$DW$730, DW_AT_location[DW_OP_regx 0x32]

$C$DW$731	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$731, DW_AT_name("R12_b3")
	.dwattr $C$DW$731, DW_AT_location[DW_OP_regx 0x33]

$C$DW$732	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$732, DW_AT_name("R13_b0")
	.dwattr $C$DW$732, DW_AT_location[DW_OP_regx 0x34]

$C$DW$733	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$733, DW_AT_name("R13_b1")
	.dwattr $C$DW$733, DW_AT_location[DW_OP_regx 0x35]

$C$DW$734	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$734, DW_AT_name("R13_b2")
	.dwattr $C$DW$734, DW_AT_location[DW_OP_regx 0x36]

$C$DW$735	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$735, DW_AT_name("R13_b3")
	.dwattr $C$DW$735, DW_AT_location[DW_OP_regx 0x37]

$C$DW$736	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$736, DW_AT_name("R14_b0")
	.dwattr $C$DW$736, DW_AT_location[DW_OP_regx 0x38]

$C$DW$737	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$737, DW_AT_name("R14_b1")
	.dwattr $C$DW$737, DW_AT_location[DW_OP_regx 0x39]

$C$DW$738	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$738, DW_AT_name("R14_b2")
	.dwattr $C$DW$738, DW_AT_location[DW_OP_regx 0x3a]

$C$DW$739	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$739, DW_AT_name("R14_b3")
	.dwattr $C$DW$739, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$740	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$740, DW_AT_name("R15_b0")
	.dwattr $C$DW$740, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$741	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$741, DW_AT_name("R15_b1")
	.dwattr $C$DW$741, DW_AT_location[DW_OP_regx 0x3d]

$C$DW$742	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$742, DW_AT_name("R15_b2")
	.dwattr $C$DW$742, DW_AT_location[DW_OP_regx 0x3e]

$C$DW$743	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$743, DW_AT_name("R15_b3")
	.dwattr $C$DW$743, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$744	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$744, DW_AT_name("R16_b0")
	.dwattr $C$DW$744, DW_AT_location[DW_OP_regx 0x40]

$C$DW$745	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$745, DW_AT_name("R16_b1")
	.dwattr $C$DW$745, DW_AT_location[DW_OP_regx 0x41]

$C$DW$746	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$746, DW_AT_name("R16_b2")
	.dwattr $C$DW$746, DW_AT_location[DW_OP_regx 0x42]

$C$DW$747	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$747, DW_AT_name("R16_b3")
	.dwattr $C$DW$747, DW_AT_location[DW_OP_regx 0x43]

$C$DW$748	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$748, DW_AT_name("R17_b0")
	.dwattr $C$DW$748, DW_AT_location[DW_OP_regx 0x44]

$C$DW$749	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$749, DW_AT_name("R17_b1")
	.dwattr $C$DW$749, DW_AT_location[DW_OP_regx 0x45]

$C$DW$750	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$750, DW_AT_name("R17_b2")
	.dwattr $C$DW$750, DW_AT_location[DW_OP_regx 0x46]

$C$DW$751	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$751, DW_AT_name("R17_b3")
	.dwattr $C$DW$751, DW_AT_location[DW_OP_regx 0x47]

$C$DW$752	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$752, DW_AT_name("R18_b0")
	.dwattr $C$DW$752, DW_AT_location[DW_OP_regx 0x48]

$C$DW$753	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$753, DW_AT_name("R18_b1")
	.dwattr $C$DW$753, DW_AT_location[DW_OP_regx 0x49]

$C$DW$754	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$754, DW_AT_name("R18_b2")
	.dwattr $C$DW$754, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$755	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$755, DW_AT_name("R18_b3")
	.dwattr $C$DW$755, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$756	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$756, DW_AT_name("R19_b0")
	.dwattr $C$DW$756, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$757	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$757, DW_AT_name("R19_b1")
	.dwattr $C$DW$757, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$758	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$758, DW_AT_name("R19_b2")
	.dwattr $C$DW$758, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$759	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$759, DW_AT_name("R19_b3")
	.dwattr $C$DW$759, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$760	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$760, DW_AT_name("R20_b0")
	.dwattr $C$DW$760, DW_AT_location[DW_OP_regx 0x50]

$C$DW$761	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$761, DW_AT_name("R20_b1")
	.dwattr $C$DW$761, DW_AT_location[DW_OP_regx 0x51]

$C$DW$762	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$762, DW_AT_name("R20_b2")
	.dwattr $C$DW$762, DW_AT_location[DW_OP_regx 0x52]

$C$DW$763	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$763, DW_AT_name("R20_b3")
	.dwattr $C$DW$763, DW_AT_location[DW_OP_regx 0x53]

$C$DW$764	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$764, DW_AT_name("R21_b0")
	.dwattr $C$DW$764, DW_AT_location[DW_OP_regx 0x54]

$C$DW$765	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$765, DW_AT_name("R21_b1")
	.dwattr $C$DW$765, DW_AT_location[DW_OP_regx 0x55]

$C$DW$766	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$766, DW_AT_name("R21_b2")
	.dwattr $C$DW$766, DW_AT_location[DW_OP_regx 0x56]

$C$DW$767	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$767, DW_AT_name("R21_b3")
	.dwattr $C$DW$767, DW_AT_location[DW_OP_regx 0x57]

$C$DW$768	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$768, DW_AT_name("R22_b0")
	.dwattr $C$DW$768, DW_AT_location[DW_OP_regx 0x58]

$C$DW$769	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$769, DW_AT_name("R22_b1")
	.dwattr $C$DW$769, DW_AT_location[DW_OP_regx 0x59]

$C$DW$770	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$770, DW_AT_name("R22_b2")
	.dwattr $C$DW$770, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$771	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$771, DW_AT_name("R22_b3")
	.dwattr $C$DW$771, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$772	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$772, DW_AT_name("R23_b0")
	.dwattr $C$DW$772, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$773	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$773, DW_AT_name("R23_b1")
	.dwattr $C$DW$773, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$774	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$774, DW_AT_name("R23_b2")
	.dwattr $C$DW$774, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$775	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$775, DW_AT_name("R23_b3")
	.dwattr $C$DW$775, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$776	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$776, DW_AT_name("R24_b0")
	.dwattr $C$DW$776, DW_AT_location[DW_OP_regx 0x60]

$C$DW$777	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$777, DW_AT_name("R24_b1")
	.dwattr $C$DW$777, DW_AT_location[DW_OP_regx 0x61]

$C$DW$778	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$778, DW_AT_name("R24_b2")
	.dwattr $C$DW$778, DW_AT_location[DW_OP_regx 0x62]

$C$DW$779	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$779, DW_AT_name("R24_b3")
	.dwattr $C$DW$779, DW_AT_location[DW_OP_regx 0x63]

$C$DW$780	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$780, DW_AT_name("R25_b0")
	.dwattr $C$DW$780, DW_AT_location[DW_OP_regx 0x64]

$C$DW$781	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$781, DW_AT_name("R25_b1")
	.dwattr $C$DW$781, DW_AT_location[DW_OP_regx 0x65]

$C$DW$782	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$782, DW_AT_name("R25_b2")
	.dwattr $C$DW$782, DW_AT_location[DW_OP_regx 0x66]

$C$DW$783	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$783, DW_AT_name("R25_b3")
	.dwattr $C$DW$783, DW_AT_location[DW_OP_regx 0x67]

$C$DW$784	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$784, DW_AT_name("R26_b0")
	.dwattr $C$DW$784, DW_AT_location[DW_OP_regx 0x68]

$C$DW$785	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$785, DW_AT_name("R26_b1")
	.dwattr $C$DW$785, DW_AT_location[DW_OP_regx 0x69]

$C$DW$786	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$786, DW_AT_name("R26_b2")
	.dwattr $C$DW$786, DW_AT_location[DW_OP_regx 0x6a]

$C$DW$787	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$787, DW_AT_name("R26_b3")
	.dwattr $C$DW$787, DW_AT_location[DW_OP_regx 0x6b]

$C$DW$788	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$788, DW_AT_name("R27_b0")
	.dwattr $C$DW$788, DW_AT_location[DW_OP_regx 0x6c]

$C$DW$789	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$789, DW_AT_name("R27_b1")
	.dwattr $C$DW$789, DW_AT_location[DW_OP_regx 0x6d]

$C$DW$790	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$790, DW_AT_name("R27_b2")
	.dwattr $C$DW$790, DW_AT_location[DW_OP_regx 0x6e]

$C$DW$791	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$791, DW_AT_name("R27_b3")
	.dwattr $C$DW$791, DW_AT_location[DW_OP_regx 0x6f]

$C$DW$792	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$792, DW_AT_name("R28_b0")
	.dwattr $C$DW$792, DW_AT_location[DW_OP_regx 0x70]

$C$DW$793	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$793, DW_AT_name("R28_b1")
	.dwattr $C$DW$793, DW_AT_location[DW_OP_regx 0x71]

$C$DW$794	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$794, DW_AT_name("R28_b2")
	.dwattr $C$DW$794, DW_AT_location[DW_OP_regx 0x72]

$C$DW$795	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$795, DW_AT_name("R28_b3")
	.dwattr $C$DW$795, DW_AT_location[DW_OP_regx 0x73]

$C$DW$796	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$796, DW_AT_name("R29_b0")
	.dwattr $C$DW$796, DW_AT_location[DW_OP_regx 0x74]

$C$DW$797	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$797, DW_AT_name("R29_b1")
	.dwattr $C$DW$797, DW_AT_location[DW_OP_regx 0x75]

$C$DW$798	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$798, DW_AT_name("R29_b2")
	.dwattr $C$DW$798, DW_AT_location[DW_OP_regx 0x76]

$C$DW$799	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$799, DW_AT_name("R29_b3")
	.dwattr $C$DW$799, DW_AT_location[DW_OP_regx 0x77]

$C$DW$800	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$800, DW_AT_name("R30_b0")
	.dwattr $C$DW$800, DW_AT_location[DW_OP_regx 0x78]

$C$DW$801	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$801, DW_AT_name("R30_b1")
	.dwattr $C$DW$801, DW_AT_location[DW_OP_regx 0x79]

$C$DW$802	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$802, DW_AT_name("R30_b2")
	.dwattr $C$DW$802, DW_AT_location[DW_OP_regx 0x7a]

$C$DW$803	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$803, DW_AT_name("R30_b3")
	.dwattr $C$DW$803, DW_AT_location[DW_OP_regx 0x7b]

$C$DW$804	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$804, DW_AT_name("R31_b0")
	.dwattr $C$DW$804, DW_AT_location[DW_OP_regx 0x7c]

$C$DW$805	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$805, DW_AT_name("R31_b1")
	.dwattr $C$DW$805, DW_AT_location[DW_OP_regx 0x7d]

$C$DW$806	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$806, DW_AT_name("R31_b2")
	.dwattr $C$DW$806, DW_AT_location[DW_OP_regx 0x7e]

$C$DW$807	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$807, DW_AT_name("R31_b3")
	.dwattr $C$DW$807, DW_AT_location[DW_OP_regx 0x7f]

	.dwendtag $C$DW$CU

