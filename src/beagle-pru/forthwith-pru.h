
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#include "forthwith-consts.h"

#include <stddef.h>

// ========================================================================== //
// Platform "Helpers"
// ========================================================================== //

/*
  e.g. macro hackery. pretty sure there's some incantations to Cthululu somewhere in here... but not too much worse (IMHO) compared to asm macro's, much less 20 different asm macro syntaxes
*/

/* #define fw_label(l) _fw_label(l) */

#define S_ "        "
// Define some specific jumps, by linux, this should support most unix-likes or proper unixes
#define __label(r) ||r||
#define _label(r) __label( r )

#define ___jump(r) __asm__(S_ "JMP       " #r )
#define __jump(r) ___jump( r )
#define _jump(r) __jump( _label( r ) )

#define ___jump_reg(r) __asm__(r);
#define __jump_reg(r) ___jump_reg(S_ "JMP       " #r ".w0" )
#define _jump_reg(r, x) __jump_reg( r )

#define ___call(x, r) __asm__(S_ "JAL      " #x ", " r)
#define __call(x, r) ___call( x, #r)
#define _call(r) __call( reg_xret, r)

#define __fw_asm(x) __asm__(x)
#define _fw_asm1(r, a, x, b, y) __asm__(S_ r " " a #x)

#define __fw_asm2(r, a, x, b, y) __asm__(S_ r " " a #x ", " b #y )
#define _fw_asm2(r, a, x, b, y) __fw_asm2(r, a, x, b, y )

#define _fw_asm3(r, a, x, b, y, c, z) __asm__(S_ r " " a #x ", " b #y ", " c #z)
#define _fw_asm4(r, a, x, b, y, c, z, d, w) __asm__(S_ r " " a #x ", " b #y ", " c #z ", " d #w)

#define __fw_asm_op(c, x, y, z) _fw_asm3(c, "", x, "", y, "", z)
#define _fw_asm_op(c, x, y, z) __fw_asm_op(c, x, y, z)

#define _fw_asm_to_addr_off(c, x, y, o, s) _fw_asm4(c, "&", x, "", y, "", o, "", s)
#define _fw_asm_from_addr_off(c, x, y, o, s) _fw_asm4(c, "&", x, "", y, "", o, "", s) 

#define _fw_asm_to_addr(c, x, y) _fw_asm_to_addr_off(c, x, y, $0, $word_sz)
#define _fw_asm_from_addr(c, x, y) _fw_asm_from_addr_off(c, x, y, $0, $word_sz)

#define _fw_asm_single(c, x) _fw_asm1(c, " ", x)

// ========================================================================== //
// Standard "Definitions"
// ========================================================================== //

/* The forth impl interfaces */
#define jump_reg(r) _jump_reg( reg_ ## r, __jump_reg )
#define jump(reg) _jump( reg )

#define load_const(y, x) _fw_asm2("LDI      ", "", reg_##y, "", x)
#define load_addr(y, x) _fw_asm_from_addr("LBBO     ", reg_##y, reg_##x)
#define store_addr(y, x) _fw_asm_to_addr("SBBO     ", reg_##y, reg_##x)

/* #define load_addr_byte(y, x) _fw_asm_from_addr("lbbo", reg_##y, reg_##x, $0) */
/* #define store_addr_byte(y, x) _fw_asm_to_addr("sbbo", reg_##y, reg_##x, $0) */

#define load_addr_off(y, x, o) _fw_asm_from_addr_off("LBBO     ", reg_##y, reg_##x, o, $word_sz)
#define store_addr_off(y, x, o) _fw_asm_to_addr_off("SBBO     ", reg_##y, reg_##x, o, $word_sz)
#define calc_addr_off(x, y, z) load_const(x, z)

// Incr & Decr
#define add_const(y, x) _fw_asm_op("ADD", reg_##y, reg_##y, x)
#define sub_const(y, x) _fw_asm_op("SUB      ", reg_##y, reg_##y, x)

// Bitwise
#define xor_reg(y, x) _fw_asm_op("XOR      ", reg_##y, reg_##y, reg_##x)
#define and_reg(y, x) _fw_asm_op("AND      ", reg_##y, reg_##y, reg_##x)
#define or_reg(y, x) _fw_asm_op("OR       ", reg_##y, reg_##y, reg_##x)
#define not_reg(y) _fw_asm2("NOT      ", "", reg_##y, "", reg_##y)

// Jumps
// ... unique labels? hmmm...
// -- gcc/clang seem to handle read-only if/else branches fine

// Signed Arithmetic
#define adds_reg(y, x) _fw_asm_op("add      ", reg_##y, reg_##y, reg_##x)
#define addu_reg(y, x) _fw_asm_op("add      ", reg_##y, reg_##y, reg_##x)

#define subu_reg(y, x) _fw_asm_op("sub      ", reg_##y, reg_##y, reg_##x)
#define subs_reg(y, x) _fw_asm_op("sub      ", reg_##y, reg_##y, reg_##x)

#define lshift_reg(y, x) _fw_asm_op("lsl      ", reg_##y, reg_##y, reg_##x)
#define rshift_reg(y, x) _fw_asm_op("lsr      ", reg_##y, reg_##y, reg_##x)

/* #define muls_reg(y, x) copy_reg(xrax, x); _fw_asm_single("imulq", reg_##y); copy_reg(x, xrax) */

#define copy_reg(y, x) _fw_asm2("MOV      ", "", reg_##y, "", reg_##x)

#define incr_reg(reg) add_const(reg, $word_sz)
#define decr_reg(reg) sub_const(reg, $word_sz)

#define _pushd_cell(reg) store_addr(psp, reg); add_const(psp, $word_sz)
#define _popd_cell(reg)  sub_const(psp, $word_sz); load_addr(reg, psp)

#define _pushr(reg) store_addr(rsp, reg); add_const(rsp, $word_sz)
#define _popr(reg)  sub_const(rsp, $word_sz); load_addr(reg, rsp)

#define _pushu(reg) store_addr(u, reg); add_const(u, $word_sz)
#define _popu(reg)  sub_const(u, $word_sz); load_addr(reg, u)

#define save_psp(reg) \
  call(  accessor_name(ctx_psp)  );                   \
  store_addr_off(xaddr, reg, $stack_of_head) // size

#define load_psp(reg) \
  call(  accessor_name(ctx_psp)  );                             \
  load_addr_off(reg, xaddr, $stack_of_head) // sizeof one word

#define call(lbl) _call( _label(lbl) )
#define call_reg(r) _call( reg_ ## r )

#define ret(reg) _jump_reg( xret )

#define save_link() pushr(xlink)
#define load_link() popr(xlink)

#define store_link() pushr(xlink)
#define restore_link() popr(xlink)

#define prepare_cenv() 0
#define save_cenv()
#define load_cenv() __asm__ volatile ( "nop" : : : "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", "r11", "r12", "r14");

#endif // __HEADER_IMPL_X86__

