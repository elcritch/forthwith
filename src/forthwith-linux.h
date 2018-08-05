
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#define reg_w %rdi
#define reg_ip %rsi
#define reg_psp %rdx
#define reg_rsp %rcx
#define reg_x %r8
#define reg_tos %r9
#define reg_ctx

/* #define __jump(reg) asm("jmp "##reg) */
#define __jump(r) __asm__("jmp " #r)
#define _jump(r) __jump(r)
#define jump(reg) _jump( reg )

/* #define jump(reg) goto *((fcell_t*)reg); */

#define ___jump_addr(r) __asm__("jmp *"r)
#define __jump_addr(r) ___jump_addr( #r )
#define _jump_addr(r) __jump_addr( r )
#define jump_addr(r) _jump_addr( reg_ ## r )


#endif // __HEADER_IMPL_X86__
