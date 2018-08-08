
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#define FORTHWITH_NO_CHECKS

#define $word_sz $8
#define $word_max $0xFFFFFFFFFFFFFFFF
#define $word_ptr_sz $8

/* %rdi %rsi %rdx %rcx %r8 %r9 %r10 */
/* gdb> info register rdi rsi rdx rcx r8 r9 r10 */
/* lldb> register read rdi rsi rdx rcx r8 r9 r10 */

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

#define fw_label(l) __asm__("" #l ":")
/* #define fw_label(l) _fw_label(l) */
#define _asm_jump() \
  __asm__ ("" :: "r" (w));          \
  __asm__ ("" :: "r" (ip));         \
  __asm__ ("" :: "r" (psp));        \
  __asm__ ("" :: "r" (rsp));        \
  __asm__ ("" :: "r" (tos))

/* #define __jump(reg) asm("jmp "##reg) */
#ifdef __MACH__
#define __jump(r) __asm__("jmp " "_" #r)
#elseif __linux__
#define __jump(r) __asm__("jmp " #r)
#else
#define __jump(r) __asm__("jmp " #r)
#endif

/* #define _jump(r) __jump( _ ## r) */
#define _jump(r) __jump( r )
#define jump(reg) _jump( reg ); _asm_jump()

/* #define jump(reg) goto *((fcell_t*)reg); */

#define ___jump_reg(r)                        \
  __asm__(r); 
  /* _asm_jump() */

#define __jump_reg(r) ___jump_reg( "jmpq *" #r )
#define _jump_reg(r, x) __jump_reg( r )
#define jump_reg(r) _jump_reg( reg_ ## r, __jump_reg )

#define _fw_asm(r, a, x, b, c, y, d) __asm__(r " " a #x b "," c #y d)

#define _fw_asm_to_addr(c, x, y) _fw_asm(c, "", x, "", "(", y, ")")
#define _fw_asm_from_addr(c, x, y) _fw_asm(c, "(", x, ")", "", y, "")
#define _fw_asm_const(c, x, y) _fw_asm(c, "", x, "", "", y, "")

#define load_const(x, y) _fw_asm_const("movq", y, reg_##x)
#define load_addr(x, y) _fw_asm_from_addr("movq", reg_##y, reg_##x)
#define store_addr(x, y) _fw_asm_to_addr("movq", reg_##y, reg_##x)

#define add_const(x, y) _fw_asm_const("addq", y, reg_##x)
#define sub_const(x, y) _fw_asm_const("subq", y, reg_##x)

#define xor_reg(x, y) _fw_asm_const("xorq", reg_##y, reg_##x)
/* #define xorl_const(x, y) _fw_asm_const("xorq", y, reg_##x) */

#define add_reg(x, y) _fw_asm_const("addq", reg_##y, reg_##x)
#define sub_reg(x, y) _fw_asm_const("subq", reg_##y, reg_##x)
#define copy_reg(x, y) _fw_asm_const("movq", reg_##y, reg_##x)

extern struct forthwith_context *ctx;

#define incr_reg(reg) add_const(ip, $word_sz)
#define decr_reg(reg) sub_const(ip, $word_sz)

#define _pushd(reg) store_addr(psp, reg); add_const(psp, $word_sz)
#define _popd(reg)  sub_const(psp, $word_sz); load_addr(reg, psp)

#define _pushr(reg) store_addr(rsp, reg); add_const(rsp, $word_sz)
#define _popr(reg)  sub_const(rsp, $word_sz); load_addr(reg, rsp)

#define _pushu(reg) store_addr(u, reg); add_const(u, $word_sz)
#define _popu(reg)  sub_const(u, $word_sz); load_addr(reg, u)


#endif // __HEADER_IMPL_X86__

