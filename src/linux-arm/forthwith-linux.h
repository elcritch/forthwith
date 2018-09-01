
#ifndef __HEADER_IMPL_ARM__
#define __HEADER_IMPL_ARM__

#include "forthwith-linux-consts.h"
#include "forthwith.h"

#include <stddef.h>

// ========================================================================== //
// Platform "Helpers"
// ========================================================================== //

/*
  e.g. macro hackery. pretty sure there's some incantations to Cthululu somewhere in here... but not too much worse (IMHO) compared to asm macro's, much less 20 different asm macro syntaxes
*/

// Define some specific jumps, by linux, this should support most unix-likes or proper unixes
#ifdef __MACH__
#define __jump(r) __asm__("bl " "_" #r)
#define __label(r) _ ## r
#elif __linux__
#define __jump(r) __asm__("bl " #r)
#define __label(r) r
#else
#define __jump(r) __asm__("bl " #r)
#define __label(r) r
#endif

#define __call(r) __asm__("bl " #r)
#define _call(r) __call(r)

#define ___jump_reg(r) __asm__(r); 
#define __jump_reg(r) ___jump_reg( "bx " #r )
#define _jump_reg(r, x) __jump_reg( r )

#define _jump(r) __jump( r )

#define ___jump_cond(c, r) __asm__( c " " #r )

#define __jump_eq(r) ___jump_cond("bleq", r)
#define _jump_eq(r) __jump_eq( r )

#define __jump_le(r) ___jump_cond("bls", r)
#define _jump_le(r) __jump_le( r )

#define _fw_asm(r, a, x, b, c, y, d) __asm__(r " " a #x b ", " c #y d)

#define _fw_asm_to_addr(c, x, y) _fw_asm(c, "", x, "", "[", y, "]")
#define _fw_asm_from_addr(c, x, y) _fw_asm(c, "", x, "", "[", y, "]")
#define _fw_asm_const(c, x, y) _fw_asm(c, "", x, "", "", y, "")
#define _fw_asm_to_addr_off(c, x, y, o) _fw_asm(c, "", x, "", "[", y, ", " #o "]")
#define _fw_asm_from_addr_off(c, x, y, o) _fw_asm(c, "", x, "", "[", y, ", " #o "]")

#define __fw_asm_single(c, x) __asm__( c " " #x)
#define _fw_asm_single(c, x) __fw_asm_single( c, x)

// ========================================================================== //
// Standard "Definitions"
// ========================================================================== //

/* The forth impl interfaces */


#define load_const(y, x) _fw_asm_const("mov", reg_##y, x)
#define load_addr(y, x) _fw_asm_from_addr("ldr", reg_##y, reg_##x)
#define store_addr(x, y) _fw_asm_to_addr("str", reg_##y, reg_##x)

#define load_addr_byte(y, x) _fw_asm_from_addr("ldrb", reg_##y, reg_##x)
#define store_addr_byte(x, y) _fw_asm_to_addr("strb", reg_##y, reg_##x)

#define load_addr_off(y, x, o) _fw_asm_from_addr_off("ldr", reg_##y, reg_##x, o)
#define store_addr_off(x, y, o) _fw_asm_to_addr_off("str", reg_##y, reg_##x, o)

#define _calc_addr_off(y, o) _fw_asm_const("ldr", reg_##y, =o)
#define calc_addr_off(y, o) _calc_addr_off(y, o)

// Incr & Decr
#define cmp_const(x, y) _fw_asm_const("cmp", reg_##x, y)
#define add_const(x, y) _fw_asm_const("add", reg_##x, y)
#define sub_const(x, y) _fw_asm_const("sub", reg_##x, y)

// Bitwise
#define cmp_reg(x, y) _fw_asm_const("cmp", reg_##x, reg_##y)
#define xor_reg(y, x) _fw_asm_const("eor", reg_##y, reg_##x)
#define and_reg(y, x) _fw_asm_const("and", reg_##y, reg_##x)
#define or_reg(y, x) _fw_asm_const("orr", reg_##y, reg_##x)

#define lshift_reg(y, x) copy_reg(xrcx, y); _fw_asm_const("lsl", reg_xcl, reg_##x)
#define rshift_reg(y, x) copy_reg(xrcx, y); _fw_asm_const("lsr", reg_xcl, reg_##x)

#define not_reg(y) _fw_asm_const("movn", reg_##y, "")

// Jumps
#define jump_reg(r) _jump_reg( reg_ ## r, __jump_reg )
#define jump(lbl) _jump( lbl )
#define jump_ifzero(reg, lbl) cmp_const(reg, $0); _jump_eq( lbl ); 

#define call_ifless(x, y, lbl) cmp_reg(y, x); _jump_le( 1f ); call( lbl ); __asm__("1: ")

// Signed Arithmetic
#define adds_reg(y, x) _fw_asm_const("add", reg_##y, reg_##x)
#define addu_reg(y, x) _fw_asm_const("add", reg_##y, reg_##x)

#define subu_reg(y, x) _fw_asm_const("sub", reg_##y, reg_##x)
#define subs_reg(y, x) _fw_asm_const("sub", reg_##y, reg_##x)

#define muls_reg(y, x) _fw_asm_const("mul", reg_##y, reg_##x)

#define copy_reg(y, x) _fw_asm_const("mov", reg_##y, reg_##x)
#define incr_reg(reg) add_const(reg, $word_sz)
#define decr_reg(reg) sub_const(reg, $word_sz)


#define save_psp(reg) \
  call(  accessor_name(ctx_psp)  );                 \
  store_addr_off(xresult, reg, $stack_of_head) // size

#define load_psp(reg) \
  call(  accessor_name(ctx_psp)  );                           \
  load_addr_off(reg, xresult, $stack_of_head) // sizeof one word

#define call(lbl) _call( __label(lbl) )

#define __call_reg(r) __asm__("blx " #r )
#define _call_reg(r) __call_reg( r )
#define call_reg(r) _call_reg( reg_ ## r )

#define ret(reg)                                 \
  __asm__("bx lr");

#define save_link() pushr(xlink)
#define load_link() popr(xlink)

#define store_link() pushr(xlink)
#define restore_link() popr(xlink)

#define prepare_cenv() 0
#define save_cenv() 
#define load_cenv() asm volatile ( "nop" : : : "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", "r11", "r12", "r14");

#endif // __HEADER_IMPL_X86__

