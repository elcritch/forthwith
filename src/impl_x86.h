
#ifndef __HEADER_IMPL_X86__
#define __HEADER_IMPL_X86__

#ifdef LOCAL

#define reg_w "r15"
#define reg_x "r20"
#define reg_x "r21"

#define __jump(reg) asm("jmp " ## reg)
#define _jump(reg) __jump(reg)
#define jump(r) _jump(reg_ # r)
/* #define jump(reg) goto *((fcell_t*)reg); */

#define jump_to(r) _jump(reg_ # r)

#endif // LOCAL

#define // __HEADER_IMPL_X86__
