
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#include "forthwith-pru-consts.h"

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

#define _pushd_0
#define _pushd_1 _pushd_cell(s1);
#define _pushd_2 _pushd_cell(s2); _pushd_1;
#define _pushd_3 _pushd_cell(s3); _pushd_2;
#define _pushd_4 _pushd_cell(s4); _pushd_3;
#define _pushd(n) _pushd_ ## n

#define _popd_0
#define _popd_1          _popd_cell(s1)
#define _popd_2 _popd_1; _popd_cell(s2)
#define _popd_3 _popd_2; _popd_cell(s3)
#define _popd_4 _popd_3; _popd_cell(s4)
#define _popd(n) _popd_ ## n

#define _pushr(reg) store_addr(rsp, reg); add_const(rsp, $word_sz)
#define _popr(reg)  sub_const(rsp, $word_sz); load_addr(reg, rsp)

#define _pushu(reg) store_addr(u, reg); add_const(u, $word_sz)
#define _popu(reg)  sub_const(u, $word_sz); load_addr(reg, u)

#define save_psp(reg) \
  load_const(xaddr, $ctx_psp);                   \
  store_addr_off(xaddr, reg, $stack_of_head) // size

#define load_psp(reg) \
  load_const(xaddr, $ctx_psp);                   \
  load_addr_off(reg, xaddr, $stack_of_head) // sizeof one word

#define call(lbl) _call( _label(lbl) )
#define call_reg(r) _call( reg_ ## r )

#define ret(reg) _jump_reg( xret )

// improvement: load "reg file" from mem, not sure if x86_64 does that...
#define save_state() \
  load_const(s1, $ctx_psp);                    \
  store_addr_off(s1, psp, $stack_of_head);  \
  load_const(s1, $ctx_rsp);                    \
  store_addr_off(s1, rsp, $stack_of_head);  \
  load_const(s1, $ctx_regs);                    \
  store_addr_off(s1, ip, $ctx_regs_of_ip);      \
  store_addr_off(s1, x, $ctx_regs_of_x);      \
  store_addr_off(s1, w, $ctx_regs_of_w)

#define load_state() \
  load_const(s1, $ctx_psp);                    \
  load_addr_off(psp, s1, $stack_of_head);     \
  load_addr_off(bpsp, s1, $stack_of_base);      \
  load_const(s1, $ctx_rsp);                    \
  load_addr_off(rsp, s1, $stack_of_head);     \
  load_addr_off(brsp, s1, $stack_of_base);      \
  load_const(s1, $ctx_regs);                    \
  load_addr_off(ip, s1, $ctx_regs_of_ip);       \
  load_addr_off(x, s1, $ctx_regs_of_x);       \
  load_addr_off(w, s1, $ctx_regs_of_w)

#define _checkd psp < bpsp
#define _checkr rsp < brsp

#endif // __HEADER_IMPL_X86__

