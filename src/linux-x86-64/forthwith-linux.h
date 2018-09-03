
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#define _GNU_SOURCE
#include "forthwith-linux-consts.h"
#include "forthwith.h"

#include <stddef.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>

// ========================================================================== //
// Platform "Helpers"
// ========================================================================== //

/*
  e.g. macro hackery. pretty sure there's some incantations to Cthululu somewhere in here... but not too much worse (IMHO) compared to asm macro's, much less 20 different asm macro syntaxes
*/


// Define some specific jumps, by linux, this should support most unix-likes or proper unixes
#ifdef __MACH__
#define __jump(r) __asm__("jmp " "_" #r)
#define __label(r) _ ## r
#elif __linux__
#define __jump(r) __asm__("jmp " #r)
#define __label(r) r
#else
#define __jump(r) __asm__("jmp " #r)
#define __label(r) r
#endif

#define __call(r) __asm__("callq " #r)
#define _call(r) __call(r)

#define _jump(r) __jump( r )
#define ___jump_reg(r) __asm__(r); 

#define __jump_reg(r) ___jump_reg( "jmpq *" #r )
#define _jump_reg(r, x) __jump_reg( r )

#define ___jump_cond(c, r) __asm__( c " " #r )

#define __jump_eq(r) ___jump_cond("je", r)
#define _jump_eq(r) __jump_eq( __label(r) )

#define __jump_ule(r) ___jump_cond("jbe", r)
#define _jump_ule(r) __jump_le( r )

#define __jump_lt(r) ___jump_cond("jl", r)
#define _jump_lt(r) __jump_lt( __label(r) )
#define __jump_gt(r) ___jump_cond("jg", r)
#define _jump_gt(r) __jump_gt( __label(r) )
#define __jump_le(r) ___jump_cond("jle", r)
#define _jump_le(r) __jump_le( __label(r) )
#define __jump_ge(r) ___jump_cond("jge", r)
#define _jump_ge(r) __jump_ge( __label(r) )

#define _fw_asm(r, a, x, b, c, y, d) __asm__(r " " a #x b "," c #y d)

#define _fw_asm_to_addr(c, x, y) _fw_asm(c, "", x, "", "(", y, ")")
#define _fw_asm_from_addr(c, x, y) _fw_asm(c, "(", x, ")", "", y, "")
#define _fw_asm_const(c, x, y) _fw_asm(c, "", x, "", "", y, "")
#define _fw_asm_to_addr_off(c, x, y, o) _fw_asm(c, "", x, "", #o "(", y, ")")
#define _fw_asm_from_addr_off(c, x, y, o) _fw_asm(c, #o "(", x, ")", "", y, "")

#define __fw_asm_single(c, x) __asm__( c " " #x)
#define _fw_asm_single(c, x) __fw_asm_single( c, x)

// ========================================================================== //
// Standard "Definitions"
// ========================================================================== //

/* The forth impl interfaces */
#define load_const(x, y) _fw_asm_const("movq", y, reg_##x)
#define load_addr(x, y) _fw_asm_from_addr("movq", reg_##y, reg_##x)
#define store_addr(x, y) _fw_asm_to_addr("movq", reg_##y, reg_##x)

#define load_addr_byte(x, y) _fw_asm_from_addr("movb", reg_##y, reg_##x)
#define store_addr_byte(x, y) _fw_asm_to_addr("movb", reg_##y, reg_##x)

#define load_addr_off(x, y, o) _fw_asm_from_addr_off("movq", reg_##y, reg_##x, o)
#define store_addr_off(x, y, o) _fw_asm_to_addr_off("movq", reg_##y, reg_##x, o)
#define calc_addr_off(x, o) _fw_asm_from_addr_off("leaq", reg_xaddr, reg_##x, o)

// Incr & Decr
#define cmp_const(x, y) _fw_asm_const("cmpq", y, reg_##x)
#define add_const(x, y) _fw_asm_const("addq", y, reg_##x)
#define sub_const(x, y) _fw_asm_const("subq", y, reg_##x)
#define and_const(x, y) _fw_asm_const("andq", y, reg_##x)

// Bitwise
#define cmp_reg(x, y) _fw_asm_const("cmpq", reg_##y, reg_##x)
#define xor_reg(x, y) _fw_asm_const("xorq", reg_##y, reg_##x)
#define and_reg(x, y) _fw_asm_const("andq", reg_##y, reg_##x)
#define or_reg(x, y) _fw_asm_const("orq", reg_##y, reg_##x)

#define lshift_reg(x, y) copy_reg(xrcx, y); _fw_asm_const("shlq", reg_xcl, reg_##x)
#define rshift_reg(x, y) copy_reg(xrcx, y); _fw_asm_const("shrq", reg_xcl, reg_##x)

#define not_reg(y) _fw_asm_single("notq", reg_##y)

// Jumps
#define jump_reg(r) _jump_reg( reg_ ## r, __jump_reg )
#define jump(reg) _jump( reg )
#define jump_ifzero(reg, lbl) cmp_const(reg, $0); _jump_eq( lbl )

#define jump_lt(x, y, lbl) cmp_reg(y, x); _jump_lt( lbl )
#define jump_gt(x, y, lbl) cmp_reg(y, x); _jump_gt( lbl )
#define jump_le(x, y, lbl) cmp_reg(y, x); _jump_le( lbl )
#define jump_ge(x, y, lbl) cmp_reg(y, x); _jump_ge( lbl )

#define call_ifless(x, y, lbl) cmp_reg(y, x); _jump_ule( 1f ); call( lbl ); __asm__("1: ")

// -- gcc/clang seem to handle read-only if/else branches fine

// Signed Arithmetic
#define adds_reg(x, y) _fw_asm_const("addq", reg_##y, reg_##x)
#define addu_reg(x, y) _fw_asm_const("addq", reg_##y, reg_##x)

#define subu_reg(x, y) _fw_asm_const("subq", reg_##y, reg_##x)
#define subs_reg(x, y) _fw_asm_const("subq", reg_##y, reg_##x)

#define muls_reg(x, y) copy_reg(xrax, x); _fw_asm_single("imulq", reg_##y); copy_reg(x, xrax)
#define divs_reg(x, y) copy_reg(xrax, x); _fw_asm_single("idivq", reg_##y); copy_reg(x, xrax)

#define copy_reg(x, y) _fw_asm_const("movq", reg_##y, reg_##x)
#define incr_reg(reg) add_const(reg, $word_sz)
#define decr_reg(reg) sub_const(reg, $word_sz)

/* #define _pushd_cell(reg) store_addr(psp, reg); add_const(psp, $word_sz) */
/* #define _popd_cell(reg)  sub_const(psp, $word_sz); load_addr(reg, psp) */

/* #define _pushr(reg) store_addr(rsp, reg); add_const(rsp, $word_sz) */
/* #define _popr(reg)  sub_const(rsp, $word_sz); load_addr(reg, rsp) */

/* #define _pushu(reg) store_addr(u, reg); add_const(u, $word_sz) */
/* #define _popu(reg)  sub_const(u, $word_sz); load_addr(reg, u) */

#define save_psp(reg) \
  call(  accessor_name(ctx_psp)  );                 \
  store_addr_off(xresult, reg, $stack_of_head) // size

#define load_psp(reg) \
  call(  accessor_name(ctx_psp)  );                           \
  load_addr_off(reg, xresult, $stack_of_head) // sizeof one word

#define call(lbl) _call( __label(lbl) )

#define __call_reg(r) __asm__("callq *" #r )
#define _call_reg(r) __call_reg( r )
#define call_reg(r) _call_reg( reg_ ## r )

#define ret(reg)                                 \
  __asm__("ret");

#define save_link() __asm__("push %rbp")
#define load_link() __asm__("pop %rbp")

#define prepare_cenv() setjmp(env)
#define save_cenv() decr_reg(xrsp); and_const(rsp, $-0x10)
#define load_cenv() incr_reg(xrsp); and_const(rsp, $-0x10); longjmp(env, 1)

#endif // __HEADER_IMPL_X86__

