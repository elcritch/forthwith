;******************************************************************************
;* PRU C/C++ Codegen                                              Unix v2.2.1 *
;* Date/Time created: Wed Aug 22 17:46:51 2018                                *
;******************************************************************************
	.compiler_opts --abi=eabi --endian=little --hll_source=on --object_format=elf --silicon_version=3 --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("src/linux-x86-64/forthwith-main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI PRU C/C++ Codegen Unix v2.2.1 Copyright (c) 2012-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/elcritch/projects/nervsy/sm/forthwith")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("forth_bootstrap")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("forth_bootstrap")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0c)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("forth_init")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("forth_init")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0c)
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("doprompt")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("doprompt")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("src/prompt.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x08)
	.dwattr $C$DW$3, DW_AT_decl_column(0x05)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$28)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$51)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$28)

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$51)

	.dwendtag $C$DW$3

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("ctx")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("ctx")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$8, DW_AT_decl_column(0x12)

;	/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/bin/optpru /tmp/TI3EQFcAXGo /tmp/TI3EQ9P040F 
;	/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/bin/acpiapru -@/tmp/TI3EQdsJOjN 
	.sect	".text:main"
	.clink
	.global	||main||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("main")
	.dwattr $C$DW$9, DW_AT_low_pc(||main||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_TI_begin_file("src/linux-x86-64/forthwith-main.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x09)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$9, DW_AT_decl_file("src/linux-x86-64/forthwith-main.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x09)
	.dwattr $C$DW$9, DW_AT_decl_column(0x05)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x402)
	.dwpsn	file "src/linux-x86-64/forthwith-main.c",line 9,column 33,is_stmt,address ||main||,isa 0

	.dwfde $C$DW$CIE, ||main||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("argc")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("argc")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_regx 0x38]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("argv")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("argv")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_regx 0x3c]


;***************************************************************
;* FNAME: main                          FR SIZE: 1026           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           1024 Auto,  2 SOE     *
;***************************************************************

||main||:
;* --------------------------------------------------------------------------*
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("rx_buff")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("rx_buff")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg8 0]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("tx_buff")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("tx_buff")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg8 512]

	.dwcfi	cfa_offset, 0
        SUB       r2, r2, 0xff          ; [ALU_PRU] 
	.dwcfi	cfa_offset, 255
        LDI       r0.w0, 0x0303         ; [ALU_PRU] 
        SBBO      &r3.b2, r2, 253, 2    ; [ALU_PRU] 
	.dwcfi	save_reg_to_mem, 14, -2
	.dwcfi	save_reg_to_mem, 15, -1
        RSB       r2, r0.w0, r2         ; [ALU_PRU] 
	.dwcfi	cfa_offset, 1026
	.dwpsn	file "src/linux-x86-64/forthwith-main.c",line 11,column 3,is_stmt,isa 0
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("forth_init")
	.dwattr $C$DW$14, DW_AT_TI_call

        JAL       r3.w2, ||forth_init|| ; [ALU_PRU] |11| forth_init
	.dwpsn	file "src/linux-x86-64/forthwith-main.c",line 12,column 3,is_stmt,isa 0
        LDI       r0, ||ctx||           ; [ALU_PRU] |12| ctx
        LBBO      &r14, r0, 0, 4        ; [ALU_PRU] |12| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("forth_bootstrap")
	.dwattr $C$DW$15, DW_AT_TI_call

        JAL       r3.w2, ||forth_bootstrap|| ; [ALU_PRU] |12| forth_bootstrap
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 17
;*   Loop closing brace source line  : 19
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "src/linux-x86-64/forthwith-main.c",line 18,column 5,is_stmt,isa 0
        LDI       r15, 0x0080           ; [ALU_PRU] |18| 
        LDI       r16, 0x0200           ; [ALU_PRU] |18| 
        ADD       r14, r2, 0            ; [ALU_PRU] |18| rx_buff,rx_buff
        MOV       r17, r15              ; [ALU_PRU] |18| 
        ADD       r16, r2, r16          ; [ALU_PRU] |18| tx_buff
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("doprompt")
	.dwattr $C$DW$16, DW_AT_TI_call

        JAL       r3.w2, ||doprompt||   ; [ALU_PRU] |18| doprompt
	.dwpsn	file "src/linux-x86-64/forthwith-main.c",line 19,column 3,is_stmt,isa 0
        JMP       ||$C$L1||             ; [ALU_PRU] |19| 
	.dwattr $C$DW$9, DW_AT_TI_end_file("src/linux-x86-64/forthwith-main.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x15)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	||forth_bootstrap||
	.global	||forth_init||
	.global	||doprompt||
	.global	||ctx||

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

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
	.dwattr $C$DW$T$22, DW_AT_decl_file("src/linux-x86-64/forthwith-linux-consts.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x12)

$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)

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

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("size_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("/home/elcritch/.nerves/artifacts/toolchain_extras_pru_cgt-linux_x86_64-3.0.1/include/stddef.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x19)

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

$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)


$C$DW$T$56	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x200)
$C$DW$17	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$17, DW_AT_upper_bound(0x7f)

	.dwendtag $C$DW$T$56


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("forth_word")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0e)
$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$18, DW_AT_name("prev")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("prev")
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$18, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x67)
	.dwattr $C$DW$18, DW_AT_decl_column(0x0c)

$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$19, DW_AT_name("body")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("body")
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$19, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x68)
	.dwattr $C$DW$19, DW_AT_decl_column(0x0d)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$20, DW_AT_name("meta")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("meta")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$20, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x69)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0b)

$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$21, DW_AT_name("len")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$21, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$21, DW_AT_decl_column(0x0b)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$22, DW_AT_name("name")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$22, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$22, DW_AT_decl_column(0x09)

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


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("forthwith_context")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x1c)
$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$23, DW_AT_name("regs")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("regs")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$23, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x52)
	.dwattr $C$DW$23, DW_AT_decl_column(0x12)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$24, DW_AT_name("vars")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("vars")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$24, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x53)
	.dwattr $C$DW$24, DW_AT_decl_column(0x12)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$25, DW_AT_name("psp")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("psp")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$25, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x54)
	.dwattr $C$DW$25, DW_AT_decl_column(0x13)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$26, DW_AT_name("rsp")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("rsp")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$26, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x55)
	.dwattr $C$DW$26, DW_AT_decl_column(0x13)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$27, DW_AT_name("user")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("user")
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$27, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x56)
	.dwattr $C$DW$27, DW_AT_decl_column(0x13)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$28, DW_AT_name("dict")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("dict")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$28, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x57)
	.dwattr $C$DW$28, DW_AT_decl_column(0x18)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$29, DW_AT_name("strings")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("strings")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$29, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x58)
	.dwattr $C$DW$29, DW_AT_decl_column(0x17)

	.dwattr $C$DW$T$40, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$40

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("fw_ctx_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x03)

$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x20)


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("forthwith_dict_stack")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x0c)
$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$30, DW_AT_name("head")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("head")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$30, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x46)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0c)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$31, DW_AT_name("base")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$31, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x47)
	.dwattr $C$DW$31, DW_AT_decl_column(0x0c)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$32, DW_AT_name("size")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$32, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x48)
	.dwattr $C$DW$32, DW_AT_decl_column(0x0b)

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
$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$33, DW_AT_name("w")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("w")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$33, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x29)
	.dwattr $C$DW$33, DW_AT_decl_column(0x0b)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$34, DW_AT_name("x")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("x")
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$34, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$34, DW_AT_decl_column(0x0b)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$35, DW_AT_name("ip")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("ip")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$35, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$35, DW_AT_decl_column(0x0b)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$36, DW_AT_name("tos")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("tos")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$36, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$36, DW_AT_decl_column(0x0b)

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
$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$37, DW_AT_name("head")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("head")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$37, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x40)
	.dwattr $C$DW$37, DW_AT_decl_column(0x0c)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$38, DW_AT_name("base")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$38, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x41)
	.dwattr $C$DW$38, DW_AT_decl_column(0x0c)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$39, DW_AT_name("size")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$39, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x42)
	.dwattr $C$DW$39, DW_AT_decl_column(0x0b)

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
$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$40, DW_AT_name("head")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("head")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$40, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$40, DW_AT_decl_column(0x09)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$41, DW_AT_name("base")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$41, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$41, DW_AT_decl_column(0x09)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$42, DW_AT_name("size")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$42, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0b)

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
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$43, DW_AT_name("state")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("state")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x33)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0b)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$44, DW_AT_name("error")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("error")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x34)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0b)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$45, DW_AT_name("tib_idx")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("tib_idx")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x36)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0b)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$46, DW_AT_name("tib_len")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("tib_len")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x37)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0b)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$47, DW_AT_name("tib_str")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("tib_str")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x38)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0b)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$48, DW_AT_name("tob_idx")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("tob_idx")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0b)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$49, DW_AT_name("tob_len")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("tob_len")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0b)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$50, DW_AT_name("tob_str")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("tob_str")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("src/forthwith.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$50, DW_AT_decl_column(0x0b)

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

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("R0_b0")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg0]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("R0_b1")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg1]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("R0_b2")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg2]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("R0_b3")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg3]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("R1_b0")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg4]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("R1_b1")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg5]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("R1_b2")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg6]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("R1_b3")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg7]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("R2_b0")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg8]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("R2_b1")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg9]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("R2_b2")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg10]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("R2_b3")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg11]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("R3_b0")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg12]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("R3_b1")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg13]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("R3_b2")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg14]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("R3_b3")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg15]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("R4_b0")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg16]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("R4_b1")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg17]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("R4_b2")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg18]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("R4_b3")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg19]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("R5_b0")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg20]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("R5_b1")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg21]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("R5_b2")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg22]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("R5_b3")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg23]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("R6_b0")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg24]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("R6_b1")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg25]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("R6_b2")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg26]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("R6_b3")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg27]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("R7_b0")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg28]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("R7_b1")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg29]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("R7_b2")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg30]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("R7_b3")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg31]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("R8_b0")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x20]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("R8_b1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x21]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("R8_b2")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x22]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("R8_b3")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x23]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("R9_b0")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x24]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("R9_b1")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x25]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("R9_b2")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x26]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("R9_b3")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x27]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("R10_b0")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x28]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("R10_b1")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x29]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("R10_b2")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x2a]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("R10_b3")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("R11_b0")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x2c]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("R11_b1")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x2d]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("R11_b2")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x2e]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("R11_b3")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("R12_b0")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x30]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("R12_b1")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x31]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("R12_b2")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x32]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("R12_b3")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x33]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("R13_b0")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x34]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("R13_b1")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x35]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("R13_b2")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x36]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("R13_b3")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x37]

$C$DW$107	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$107, DW_AT_name("R14_b0")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x38]

$C$DW$108	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$108, DW_AT_name("R14_b1")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x39]

$C$DW$109	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$109, DW_AT_name("R14_b2")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x3a]

$C$DW$110	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$110, DW_AT_name("R14_b3")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$111	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$111, DW_AT_name("R15_b0")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$112	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$112, DW_AT_name("R15_b1")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x3d]

$C$DW$113	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$113, DW_AT_name("R15_b2")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x3e]

$C$DW$114	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$114, DW_AT_name("R15_b3")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$115	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$115, DW_AT_name("R16_b0")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x40]

$C$DW$116	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$116, DW_AT_name("R16_b1")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x41]

$C$DW$117	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$117, DW_AT_name("R16_b2")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x42]

$C$DW$118	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$118, DW_AT_name("R16_b3")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x43]

$C$DW$119	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$119, DW_AT_name("R17_b0")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x44]

$C$DW$120	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$120, DW_AT_name("R17_b1")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x45]

$C$DW$121	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$121, DW_AT_name("R17_b2")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x46]

$C$DW$122	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$122, DW_AT_name("R17_b3")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x47]

$C$DW$123	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$123, DW_AT_name("R18_b0")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x48]

$C$DW$124	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$124, DW_AT_name("R18_b1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x49]

$C$DW$125	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$125, DW_AT_name("R18_b2")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$126	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$126, DW_AT_name("R18_b3")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$127	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$127, DW_AT_name("R19_b0")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$128	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$128, DW_AT_name("R19_b1")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$129	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$129, DW_AT_name("R19_b2")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$130	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$130, DW_AT_name("R19_b3")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$131	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$131, DW_AT_name("R20_b0")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x50]

$C$DW$132	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$132, DW_AT_name("R20_b1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x51]

$C$DW$133	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$133, DW_AT_name("R20_b2")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x52]

$C$DW$134	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$134, DW_AT_name("R20_b3")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x53]

$C$DW$135	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$135, DW_AT_name("R21_b0")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x54]

$C$DW$136	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$136, DW_AT_name("R21_b1")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x55]

$C$DW$137	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$137, DW_AT_name("R21_b2")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x56]

$C$DW$138	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$138, DW_AT_name("R21_b3")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x57]

$C$DW$139	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$139, DW_AT_name("R22_b0")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x58]

$C$DW$140	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$140, DW_AT_name("R22_b1")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x59]

$C$DW$141	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$141, DW_AT_name("R22_b2")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$142	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$142, DW_AT_name("R22_b3")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$143	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$143, DW_AT_name("R23_b0")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$144	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$144, DW_AT_name("R23_b1")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$145	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$145, DW_AT_name("R23_b2")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$146	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$146, DW_AT_name("R23_b3")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$147	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$147, DW_AT_name("R24_b0")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x60]

$C$DW$148	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$148, DW_AT_name("R24_b1")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x61]

$C$DW$149	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$149, DW_AT_name("R24_b2")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x62]

$C$DW$150	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$150, DW_AT_name("R24_b3")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x63]

$C$DW$151	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$151, DW_AT_name("R25_b0")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x64]

$C$DW$152	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$152, DW_AT_name("R25_b1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x65]

$C$DW$153	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$153, DW_AT_name("R25_b2")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x66]

$C$DW$154	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$154, DW_AT_name("R25_b3")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x67]

$C$DW$155	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$155, DW_AT_name("R26_b0")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x68]

$C$DW$156	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$156, DW_AT_name("R26_b1")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x69]

$C$DW$157	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$157, DW_AT_name("R26_b2")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x6a]

$C$DW$158	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$158, DW_AT_name("R26_b3")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x6b]

$C$DW$159	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$159, DW_AT_name("R27_b0")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x6c]

$C$DW$160	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$160, DW_AT_name("R27_b1")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x6d]

$C$DW$161	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$161, DW_AT_name("R27_b2")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x6e]

$C$DW$162	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$162, DW_AT_name("R27_b3")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x6f]

$C$DW$163	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$163, DW_AT_name("R28_b0")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x70]

$C$DW$164	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$164, DW_AT_name("R28_b1")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x71]

$C$DW$165	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$165, DW_AT_name("R28_b2")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x72]

$C$DW$166	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$166, DW_AT_name("R28_b3")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x73]

$C$DW$167	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$167, DW_AT_name("R29_b0")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x74]

$C$DW$168	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$168, DW_AT_name("R29_b1")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x75]

$C$DW$169	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$169, DW_AT_name("R29_b2")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x76]

$C$DW$170	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$170, DW_AT_name("R29_b3")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x77]

$C$DW$171	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$171, DW_AT_name("R30_b0")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x78]

$C$DW$172	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$172, DW_AT_name("R30_b1")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x79]

$C$DW$173	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$173, DW_AT_name("R30_b2")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x7a]

$C$DW$174	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$174, DW_AT_name("R30_b3")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x7b]

$C$DW$175	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$175, DW_AT_name("R31_b0")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x7c]

$C$DW$176	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$176, DW_AT_name("R31_b1")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x7d]

$C$DW$177	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$177, DW_AT_name("R31_b2")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x7e]

$C$DW$178	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$178, DW_AT_name("R31_b3")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x7f]

	.dwendtag $C$DW$CU

