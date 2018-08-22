
#ifndef __HEADER_IMPL_CONST_X86__
#define __HEADER_IMPL_CONST_X86__

#include <stddef.h>
#include <stdint.h>

typedef intptr_t fcell_t;


/* #define FORTHWITH_NO_CHECKS */

#define $1 1
#define $0 0

#define $word_sz 4
#define $word_max 0xFFFFFFFF
#define $word_ptr_sz 4

#define $ctx      ||ctx||
#define $ctx_psp  ||ctx_psp||
#define $ctx_rsp  ||ctx_rsp||
#define $ctx_regs ||ctx_regs||

#define $ctx_of_regs 0
#define $ctx_of_vars 4
#define $ctx_of_psp 8
#define $ctx_of_rsp 12
#define $ctx_of_user 16
#define $ctx_of_dict 20
#define $ctx_of_strs 24

#define $ctx_regs_of_w   0
#define $ctx_regs_of_x   4
#define $ctx_regs_of_ip  8

#define $stack_of_head  0
#define $stack_of_base  4
#define $stack_of_size  8

#define $vars_of_state      0
#define $vars_of_tib_idx    4
#define $vars_of_tib_len    8
#define $vars_of_tib_str    12

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
#define reg_bpsp    r15
#define reg_psp     r16
#define reg_brsp    r17
#define reg_rsp     r18
#define reg_ip      r19
#define reg_x       r20

// ip_x_w_tl_s1_s2_s3_s4
#define reg_w       r21
#define reg_tl      r22

#define reg_s1      r23
#define reg_s2      r24
#define reg_s3      r25
#define reg_s4      r26

/* Define C params... compilers vary in which registers they use */

// Relative offset register
#define reg_xaddr r0.w0
#define reg_xret r3.w2

#endif // __HEADER_IMPL_CONST_X86__

