
#ifndef __HEADER_IMPL_CONST_ARM__
#define __HEADER_IMPL_CONST_ARM__

#include <stdint.h>
#include <stddef.h>

typedef uint32_t fcell_t;

#define FW_CUSTOM_ATTRIBUTES
#define __fw_noinline__ __attribute__ ((noinline))
#define fw_call void __attribute__ ((noinline))
/* #define fw_call void __attribute__ ((target("thumb"), noinline)) */

#define FW_STATE_FUNCS_NO_BASES

#define FORTHWITH_NO_CHECKS

#define $1 #1
#define $0 #0

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
    X_t   x,                                    \
    RSP_t rsp,                                  \
    IP_t  ip,                                   \
    W_t   w
    

#define FORTH_REGISTER_EMPTY_LIST 0, 0, 0, 0

// reg r %rdi %rsi
#define reg_x       R0
#define reg_rsp     r1
#define reg_ip      r2
#define reg_w       r3
#define reg_psp     sp

#define reg_s1      r4
#define reg_s2      r5
#define reg_s3      r6
#define reg_s4      r7

/* Define C params... compilers vary in which registers they use */

// Relative offset register
/* #define reg_xaddr %rip */
#define reg_xresult r0
/* #define reg_xaddr  */

#define reg_xsp sp 

#endif // __HEADER_IMPL_CONST_X86__

