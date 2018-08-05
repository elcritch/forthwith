
#ifndef _FORTHWITH_HEADER_
#define _FORTHWITH_HEADER_

#include <stdint.h>

#include "impl_x86.h"

/* Standard Forth Cell */
typedef int64_t fcell_t;

/* Forth Execution Token (pointer to forth execution type) */
/* e.g. docolon, dovar, doconst, or machine addr */
typedef fcell_t* fcell_xt;


/* Primary Registers */
/* typedef fcell_xt  W_t  ;  // Working Register / Pointer */
/* typedef fcell_xt* IP_t ;  // Instruction Pointer */
/* typedef fcell_xt* RSP_t;  // Return Stack Pointer */
/* typedef fcell_t*  PSP_t;  // Parameter Stack Pointer */
/* typedef fcell_t   TOS_t;  // Top of Stack */

#define W_t fcell_xt  // Working Register / Pointer
#define IP_t fcell_xt*  // Instruction Pointer
#define RSP_t fcell_xt**  // Return Stack Pointer
#define PSP_t fcell_t*  // Parameter Stack Pointer
#define TOS_t fcell_t  // Top of Stack

/* Extra Registers */
typedef  fcell_t  X_t;  // Scratch Register
typedef  struct forthwith_context*  Ctx_t;  // Scratch Register

/* Forth "native C" function return type */
#define fw_call inline void

/* Define C params... compilers vary in which registers they use */
#define FORTH_REGISTERS W_t   w,            \
                        IP_t  ip,           \
                        PSP_t psp,          \
                        RSP_t rsp,          \
                        X_t   x,            \
                        TOS_t tos,          \
                        Ctx_t ctx

#define FORTH_CALL_PARAMS w, ip, psp, rsp, x, tos, up

typedef struct forth_word fword_t;

struct forth_word {
  fword_t *prev;
  uint8_t meta;
  fcell_xt *body;
  char *name;
};

struct forthwith_context { /**< FORTH environment */
  uint8_t immediate;
	fcell_t *psp_base; fcell_t *psp_head; fcell_t  psp_size;
	fcell_xt* *rsp_base; fcell_xt* *rsp_head; fcell_t  rsp_size;
	fcell_t *user_base; fcell_t *user_head; fcell_t  user_size;
	fword_t *dict_base; fword_t *dict_head; fcell_t  dict_size;
};
typedef struct forthwith_context fw_ctx_t;

typedef fcell_t (*forthwith_call_0)();
typedef fcell_t (*forthwith_call_1)(fcell_t a);
typedef fcell_t (*forthwith_call_2)(fcell_t a, fcell_t b);
typedef fcell_t (*forthwith_call_3)(fcell_t a, fcell_t b, fcell_t c);

#define FORTH_PRIMITIVE(_fname, _type, _mode, cname) \
  fw_call cname(FORTH_REGISTERS)

#ifndef FORTHWITH_NO_CHECKS
#define check(cond, err_code) if (cond) { x = err_code; jump("abort"); }
#else
#define check(cond, err_code)
#endif // FORTHWITH_NO_CHECKS

enum forthwith_the_errors {
  FW_OK,
  FW_ERR_STACKOVERFLOW,
  FW_ERR_STACKUNDERFLOW,
};

typedef enum forthwith_the_errors fw_error_t;

#define pushd(reg)                                       \
  check(psp < (ctx->psp_base + ctx->psp_size), FW_ERR_STACKOVERFLOW); \
  *(psp++) = reg;
#define popd(reg) \
  check(psp > ctx->psp_base, FW_ERR_STACKUNDERFLOW);  \
  reg = *(psp--);

#define pushr(reg)                                         \
  check(rsp > (ctx->rsp_base + ctx->rsp_size), FW_ERR_STACKOVERFLOW); \
  *(rsp++) = reg;
#define popr(reg)                                              \
  check(rsp < ctx->rsp_base, FW_ERR_STACKUNDERFLOW);    \
  reg = *(rsp--);

#ifdef FASTR_USERSTACK_IN_REGISTER
  #define user_here u
  #define pushu(reg)                                                     \
    check(u > (ctx->rsp_base + ctx->rsp_size), FW_ERR_STACK_OVERFLOW); \
    *(u++) = reg;
  #define popu(reg)                                           \
    check(u < (ctx->user_base), FW_ERR_STACK_UNDERFLOW); \
    reg = *(u--);
#else
#define user_here  ctx->user_head
  #define pushu(reg)                                                      \
    check(ctx->user_head > (ctx->user_base + ctx->user_size), FW_ERR_STACK_OVERFLOW); \
    *(ctx->user_head++) = reg;
  #define popu(reg)                                           \
    check(ctx->user_head < (ctx->user_base), FW_ERR_STACK_UNDERFLOW); \
    *(ctx->user_head--) = reg;
#endif // FASTR_NO_USERSTACK_OPS


#define F_IMMED 0x80
#define F_HIDDEN 0x20
#define F_LENMASK 0x1F	// length mask

#endif // _FORTHWITH_HEADER_
