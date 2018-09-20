
#ifndef __HEADER_IMPL_CONST_X86__
#define __HEADER_IMPL_CONST_X86__

#include <stdint.h>

typedef int64_t fcell_t;


/* #define FORTHWITH_NO_CHECKS */
// #define FW_TRACE

#define $FF $255
#define $2 $2
#define $1 $1
#define $0 $0

#define WORD_SZ 8
#define WORD_PTR_SZ 8

#define $word_sz $8
#define $word_max $0xFFFFFFFFFFFFFFFF
#define $word_ptr_sz $8

#ifdef __MACH__
#define $ctx _ctx(%rip)
#define $ctx_psp _ctx_psp(%rip)
#define $ctx_rsp _ctx_rsp(%rip)
#define $ctx_regs _ctx_regs(%rip)
#else
#define $ctx ctx(%rip)
#define $ctx_psp ctx_psp(%rip)
#define $ctx_rsp ctx_rsp(%rip)
#define $ctx_regs ctx_regs(%rip)
#endif

#define $ctx_of_regs 0
#define $ctx_of_vars 8
#define $ctx_of_psp 16
#define $ctx_of_rsp 24
#define $ctx_of_user 32
#define $ctx_of_dict 40
#define $ctx_of_strs 48

/* #define $ctx_regs_of_psp "0" */
/* #define $ctx_regs_of_rsp "8" */
#define $ctx_regs_of_w   0
#define $ctx_regs_of_x   8
#define $ctx_regs_of_ip 16

#define $stack_of_head  0
#define $stack_of_base  8
#define $stack_of_size  16

#define $vars_of_state      0
#define $vars_of_tib_idx    8
#define $vars_of_tib_len    16
#define $vars_of_tib_str    24

// ========================================================================== //
// Platform Registers 
// ========================================================================== //

/* The C macros below expand registers from 'w' to 'reg_ ## w' which then
 get substituted with whats here. This helps with string concat of the various
 registers. */

#define FORTH_REGISTERS                         \
    PSP_t _bpsp,                                 \
    PSP_t _psp,                                  \
    RSP_t _brsp,                                 \
    RSP_t _rsp,                                  \
    IP_t  _ip, \
    X_t   _x

#define FORTH_REGISTER_EMPTY_LIST 0, 0, 0, 0, 0, 0

// reg r %rdi %rsi
#define reg_bpsp    %rdi
#define reg_psp     %rsi
#define reg_brsp    %rdx
#define reg_rsp     %rcx
#define reg_ip      %r8
#define reg_x       %r9

// ip_x_w_tl_s1_s2_s3_s4
#define reg_w       %r10
#define reg_tl      %r11

#define reg_s1       %r12
#define reg_s2       %r13
#define reg_s3       %r14
#define reg_s4       %r15

/* Define C params... compilers vary in which registers they use */

// Relative offset register
#define reg_xaddr %rip
#define reg_xresult %rax
#define reg_xlink %rax

#define reg_xrdi %rdi
#define reg_xrsi %rsi
#define reg_xrdx %rdx
#define reg_xrcx %rcx
#define reg_xcl  %cl // mainly for shift ops
#define reg_xrax %rax
#define reg_xrip %rip
#define reg_xrbp %rbp
#define reg_xrsp %rsp

#endif // __HEADER_IMPL_CONST_X86__

