
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#include <stddef.h>

#define FORTHWITH_NO_CHECKS

#define $word_sz $8
#define $word_max $0xFFFFFFFFFFFFFFFF
#define $word_ptr_sz $8


// ========================================================================== //
// Platform Registers 
// ========================================================================== //

/* The C macros below expand registers from 'w' to 'reg_ ## w' which then
 get substituted with whats here. This helps with string concat of the various
 registers. */
#define reg_w   %rdi
#define reg_tos %rsi
#define reg_x   %rdx
#define reg_ip  %rcx
#define reg_psp %r8
#define reg_rsp %r9
#define reg_u %r10
#define reg_a %r11
#define reg_b %r12
#define reg_c %r13
#define reg_rax %rax
#define reg_rip %rip
/* %rdi %rsi %rdx %rcx %r8 %r9 %r10 */
/* gdb> info register rdi rsi rdx rcx r8 r9 r10 */
/* lldb> register read rdi rsi rdx rcx r8 r9 r10 */


// ========================================================================== //
// Platform "Helpers"
// ========================================================================== //

/*
  e.g. macro hackery. pretty sure there's some incantations to Cthululu somewhere in here... but not too much worse (IMHO) compared to asm macro's, much less 20 different asm macro syntaxes
*/

/* #define fw_label(l) _fw_label(l) */
#define _asm_jump() \
  __asm__ ("" :: "r" (w));          \
  __asm__ ("" :: "r" (ip));         \
  __asm__ ("" :: "r" (psp));        \
  __asm__ ("" :: "r" (rsp));        \
  __asm__ ("" :: "r" (tos))

// Define some specific jumps, by linux, this should support most unix-likes or proper unixes
#ifdef __MACH__
#define __jump(r) __asm__("jmp " "_" #r)
#elseif __linux__
#define __jump(r) __asm__("jmp " #r)
#else
#define __jump(r) __asm__("jmp " #r)
#endif

#define _jump(r) __jump( r )
#define ___jump_reg(r) __asm__(r); 

#define __jump_reg(r) ___jump_reg( "jmpq *" #r )
#define _jump_reg(r, x) __jump_reg( r )

#define _fw_asm(r, a, x, b, c, y, d) __asm__(r " " a #x b "," c #y d)

#define _fw_asm_to_addr(c, x, y) _fw_asm(c, "", x, "", "(", y, ")")
#define _fw_asm_from_addr(c, x, y) _fw_asm(c, "(", x, ")", "", y, "")
#define _fw_asm_const(c, x, y) _fw_asm(c, "", x, "", "", y, "")
#define _fw_asm_to_addr_off(c, x, y, o) _fw_asm(c, "", x, "", o "(", y, ")")
#define _fw_asm_from_addr_off(c, x, y, o) _fw_asm(c, o "(", x, ")", "", y, "")

// ========================================================================== //
// Standard "Definitions"
// ========================================================================== //

/*
  The forth impl interfaces 
 */

#define jump_reg(r) _jump_reg( reg_ ## r, __jump_reg )
#define jump(reg) _jump( reg ); _asm_jump()

#define load_const(x, y) _fw_asm_const("movq", y, reg_##x)
#define load_addr(x, y) _fw_asm_from_addr("movq", reg_##y, reg_##x)
#define store_addr(x, y) _fw_asm_to_addr("movq", reg_##y, reg_##x)

#define load_addr_off(x, y, o) _fw_asm_from_addr_off("movq", reg_##y, reg_##x, o)
#define store_addr_off(x, y, o) _fw_asm_to_addr_off("movq", reg_##y, reg_##x, o)

#define add_const(x, y) _fw_asm_const("addq", y, reg_##x)
#define sub_const(x, y) _fw_asm_const("subq", y, reg_##x)

#define xor_reg(x, y) _fw_asm_const("xorq", reg_##y, reg_##x)
/* #define xorl_const(x, y) _fw_asm_const("xorq", y, reg_##x) */

#define add_reg(x, y) _fw_asm_const("addq", reg_##y, reg_##x)
#define sub_reg(x, y) _fw_asm_const("subq", reg_##y, reg_##x)
#define copy_reg(x, y) _fw_asm_const("movq", reg_##y, reg_##x)


#define incr_reg(reg) add_const(reg, $word_sz)
#define decr_reg(reg) sub_const(reg, $word_sz)

#define _pushd(reg) store_addr(psp, reg); add_const(psp, $word_sz)
#define _popd(reg)  sub_const(psp, $word_sz); load_addr(reg, psp)

#define _pushr(reg) store_addr(rsp, reg); add_const(rsp, $word_sz)
#define _popr(reg)  sub_const(rsp, $word_sz); load_addr(reg, rsp)

#define _pushu(reg) store_addr(u, reg); add_const(u, $word_sz)
#define _popu(reg)  sub_const(u, $word_sz); load_addr(reg, u)

#define $fw_ctx_offset_psp_header "8"

#define save_psp(reg) \
  load_addr_off(rax, rip, "ctx"); \ 
  store_addr_off(rax, reg, $fw_ctx_offset_psp_header) // sizeof one word

#endif // __HEADER_IMPL_X86__

