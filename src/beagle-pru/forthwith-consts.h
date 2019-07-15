
#ifndef __HEADER_IMPL_CONST_X86__
#define __HEADER_IMPL_CONST_X86__

#include <stddef.h>
#include <stdint.h>

typedef int32_t fcell_t;

#ifdef __MACH__
#define CELL_FMT "%ld"
#else
#define CELL_FMT "%ld"
#endif

#define FW_CUSTOM_ATTRIBUTES
#define __fw_noinline__ __attribute__ ((noinline))
#define fw_call void __attribute__ ((noinline))
/* #define FORTHWITH_NO_CHECKS */

#define $FF 255
#define $2 2
#define $1 1
#define $0 0

#define $word_sz 4
#define $word_max 0xFFFFFFFF
#define $word_ptr_sz 4

#define WORD_SZ 4
#define WORD_PTR_SZ 4

/* #define $ctx ctx(%rip) */
/* #define $ctx_psp ctx_psp(%rip) */
/* #define $ctx_rsp ctx_rsp(%rip) */
/* #define $ctx_regs ctx_regs(%rip) */

#define $ctx_regs_of_w     0
#define $ctx_regs_of_x     4
#define $ctx_regs_of_ip    8
#define $ctx_regs_of_link  12

#define $stack_of_head  0
#define $stack_of_base  4
#define $stack_of_size  8


// ========================================================================== //
// Platform Registers 
// ========================================================================== //

/* The C macros below expand registers from 'w' to 'reg_ ## w' which then
 get substituted with whats here. This helps with string concat of the various
 registers. */

#define FORTH_REGISTERS                         \
  PSP_t _bpsp,                                  \
    PSP_t _psp,                                 \
    RSP_t _brsp,                                \
    RSP_t _rsp,                                 \
    IP_t  _ip,                                  \
    X_t   _x

#define FORTH_REGISTER_EMPTY_LIST 0, 0, 0, 0, 0, 0


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
#define reg_xlink r30
#define reg_xret r3.w2
#define reg_xresult r14

/* #define reg_xlink r2.w2 */
/* #define reg_xpc pc */

#endif // __HEADER_IMPL_CONST_X86__

