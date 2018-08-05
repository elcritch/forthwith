
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__


#define reg_w "r15"
#define reg_x "r20"
#define reg_psp "r21"
#define reg_rsp "r21"
#define reg_ip "r21"

#define __jump(reg) asm("jmp " # reg)
#define _jump(reg) __jump(reg)
#define jump(r) _jump(r)
/* #define jump(reg) goto *((fcell_t*)reg); */

#define jump_addr(r) _jump(reg_ # r)


#endif // __HEADER_IMPL_X86__
