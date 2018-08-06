
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

/* #define __jump(reg) asm("jmp "##reg) */
#define __jump(r) \
  __asm__("jmp " "_" # r);                      \
  __asm__ __volatile__("" :: "r" (w));          \
  __asm__ __volatile__("" :: "r" (ip));         \
  __asm__ __volatile__("" :: "r" (psp));        \
  __asm__ __volatile__("" :: "r" (rsp));        \
  __asm__ __volatile__("" :: "r" (x));          \
  __asm__ __volatile__("" :: "r" (tos))

/* #define _jump(r) __jump( _ ## r) */
#define _jump(r) __jump( r )
#define jump(reg) _jump( reg )

/* #define jump(reg) goto *((fcell_t*)reg); */

#define ___jump_reg(r) __asm__("jmp *"r)
#define __jump_reg(r) ___jump_reg( #r )
#define _jump_reg(r) __jump_reg( r )
#define jump_reg(r) _jump_reg( reg_ ## r )

extern struct forthwith_context *ctx;

#endif // __HEADER_IMPL_X86__
