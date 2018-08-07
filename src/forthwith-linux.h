
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#define FORTHWITH_NO_CHECKS

#define reg_w   %rdi
#define reg_ip  %rsi
#define reg_psp %rdx
#define reg_rsp %rcx
#define reg_x   %r8
#define reg_tos %r9
#define reg_ctx %r10

#define fw_label(l) __asm__("" #l ":")
/* #define fw_label(l) _fw_label(l) */
#define _asm_jump() \
  __asm__ ("" :: "r" (w));          \
  __asm__ ("" :: "r" (ip));         \
  __asm__ ("" :: "r" (psp));        \
  __asm__ ("" :: "r" (rsp));        \
  __asm__ ("" :: "r" (ctx));          \
  __asm__ ("" :: "r" (tos))

/* #define __jump(reg) asm("jmp "##reg) */
#define __jump(r) \
  __asm__("jmp " "_" # r);                      \
  _asm_jump()

/* #define _jump(r) __jump( _ ## r) */
#define _jump(r) __jump( r )
#define jump(reg) _jump( reg )

/* #define jump(reg) goto *((fcell_t*)reg); */

#define ___jump_reg(r)                        \
  __asm__(r); 
  /* _asm_jump() */

#define __jump_reg(r) ___jump_reg( "jmpq *" #r )
#define _jump_reg(r, x) __jump_reg( r )
#define jump_reg(r) _jump_reg( reg_ ## r, __jump_reg )

#define fw_asm(r, a, x, b, c, y, d) __asm__(r " " a #x b "," c #y d)

#define _load_addr(x, y) fw_asm("movq", "(", x, ")", "", y, "")
#define load_addr(x, y) _load_addr(reg_##x, reg_##y)

#define _store_addr(x, y) fw_asm("movq", "", x, "", "(", y, ")")
#define store_addr(x, y) _store_addr(reg_##x, reg_##y)

#define _add_const(x, y) fw_asm("addq", "", x, "", "", y, "")
#define add_const(x, y) _add_const(y, reg_##x)

extern struct forthwith_context *ctx;

#endif // __HEADER_IMPL_X86__
