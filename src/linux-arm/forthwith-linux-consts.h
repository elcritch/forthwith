
#ifndef __HEADER_IMPL_CONST_ARM__
#define __HEADER_IMPL_CONST_ARM__

#include <stdint.h>
#include <stddef.h>

typedef intptr_t fcell_t;

#define FW_CUSTOM_ATTRIBUTES
#define __fw_noinline__ __attribute__ ((noinline))
#define fw_call void __attribute__ ((target("thumb"), noinline))

/* #define FORTHWITH_NO_CHECKS */

#define $1 $1
#define $0 $0

#define $word_sz #4
#define $word_max #0xFFFFFFFF
#define $word_ptr_sz #8

/* #define $ctx ctx(%rip) */
/* #define $ctx_psp ctx_psp(%rip) */
/* #define $ctx_rsp ctx_rsp(%rip) */
/* #define $ctx_regs ctx_regs(%rip) */

#define $ctx_regs_of_w   #0
#define $ctx_regs_of_x   #4
#define $ctx_regs_of_ip  #8

#define $stack_of_head  #0
#define $stack_of_base  #4
#define $stack_of_size  #8


// ========================================================================== //
// Platform Registers 
// ========================================================================== //

/* The C macros below expand registers from 'w' to 'reg_ ## w' which then
 get substituted with whats here. This helps with string concat of the various
 registers. */

#define FORTH_REGISTERS                         \
    PSP_t bpsp,                                 \
    PSP_t psp,                                  \
    RSP_t brsp,                                 \
    RSP_t rsp,                                  \
    IP_t  ip, \
    X_t   x

// reg r %rdi %rsi
#define reg_bpsp    r4
#define reg_psp     r1
#define reg_brsp    r5
#define reg_rsp     r12
#define reg_ip      r2
#define reg_x       r3

// ip_x_w_tl_s1_s2_s3_s4
#define reg_w       r6
#define reg_tl      r7

#define reg_s1      r8
#define reg_s2      r9
#define reg_s3      r10
#define reg_s4      r11

/* Define C params... compilers vary in which registers they use */

// Relative offset register
/* #define reg_xaddr %rip */
#define reg_xresult r0

#define reg_xsp r13 

#endif // __HEADER_IMPL_CONST_X86__

