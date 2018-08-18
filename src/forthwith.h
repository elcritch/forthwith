
#ifndef _FORTHWITH_HEADER_
#define _FORTHWITH_HEADER_

#include <stdint.h>

/* Standard Forth Cell */
typedef intptr_t fcell_t;

/* Forth Execution Token (pointer to forth execution type) */
/* e.g. docolon, dovar, doconst, or machine addr */
typedef fcell_t* fcell_xt;


/* Primary Registers */
#define W_t fcell_xt  // Working Register / Pointer
#define IP_t fcell_xt*  // Instruction Pointer
#define RSP_t fcell_xt**  // Return Stack Pointer
#define PSP_t fcell_t*  // Parameter Stack Pointer
#define TOS_t fcell_t  // Top of Stack

/* Extra Registers */
typedef  fcell_t  X_t;  // Scratch Register
/* typedef  struct forthwith_context*  Ctx_t;  // Scratch Register */

/* Forth "native C" function return type */
#define __fw_noinline__ __attribute__ ((noinline))
#define fw_call void __attribute__ ((noinline))

/* Define C params... compilers vary in which registers they use */
#define FORTH_REGISTERS \
  TOS_t tos,            \
  W_t   w,              \
  IP_t  ip,             \
  PSP_t psp,            \
  PSP_t bpsp,           \
  RSP_t rsp,            \
  RSP_t brsp

/* #define FORTH_CALL_PARAMS x, tos, w, ip, psp, rsp */

typedef struct forth_word fword_t;

typedef struct forthwith_regs { /**< FORTH environment */
  // ForthWith State
  fcell_t *psp;
  fcell_t *rsp;
  fcell_t ip;
  fcell_t tos;
  fcell_t w;
  fcell_t *usp;
  fcell_t *bpsp;
} fw_ctx_regs_t;

typedef struct forthwith_vars { /**< FORTH environment */
  fcell_t base;
  fcell_t state;
  fcell_t error;

  fcell_t tib_idx;
  fcell_t tib_len;
  char   *tib_str;
} fw_ctx_vars_t;

typedef struct forthwith_stack { /**< FORTH environment */
  fcell_t *head;
  fcell_t *base;
  fcell_t size;
} fw_ctx_stack_t;

typedef struct forthwith_dict_stack { /**< FORTH environment */
  fword_t *head;
  fword_t *base;
  fcell_t size;
} fw_ctx_dict_stack_t;

typedef struct forthwith_str_stack { /**< FORTH environment */
  char *head;
  char *base;
  fcell_t size; // bytes
} fw_ctx_str_stack_t;

typedef struct forthwith_context { /**< FORTH environment */
  fw_ctx_regs_t *regs;
  fw_ctx_vars_t *vars;
  fw_ctx_stack_t *psp;
  fw_ctx_stack_t *rsp;
  fw_ctx_stack_t *user;
  fw_ctx_dict_stack_t *dict;
  fw_ctx_str_stack_t *strings;
} fw_ctx_t;

/// Global Forthwith Context
extern fw_ctx_t *ctx;
extern fw_ctx_stack_t *ctx_psp;
extern fw_ctx_stack_t *ctx_rsp;
extern fw_ctx_regs_t *ctx_regs;

typedef fcell_t (*forthwith_call_0)();
typedef fcell_t (*forthwith_call_1)(fcell_t a);
typedef fcell_t (*forthwith_call_2)(fcell_t a, fcell_t b);
typedef fcell_t (*forthwith_call_3)(fcell_t a, fcell_t b, fcell_t c);

struct forth_word {
  fword_t *prev;
  fcell_xt *body;
  uint8_t meta;
  uint8_t len;
  char *name;
};

int forth_bootstrap(fw_ctx_t* ctx);
int forth_init();


#define FW_OK 0
#define FW_ERR_STACKOVERFLOW 1
#define FW_ERR_STACKUNDERFLOW 2
#define FW_ERR_NOWORD 3

typedef enum forthwith_the_states fw_state_t;
enum forthwith_the_states {
  IMMEDIATE_MODE = 0,
  COMPILE_MODE = 1,
};

#define F_NORMAL 0x0
#define F_IMMED  0x2
#define F_HIDDEN 0x4
#define F_OTHER  0x8

extern fcell_t forth_pop();
extern int forth_push(fcell_t val);

extern int forth_init();
extern int forth_bootstrap(fw_ctx_t* ctx);
extern fw_call forth_exec(FORTH_REGISTERS);
extern int forth_eval(fcell_xt *instr);
extern fcell_t forth_count();
extern void forth_clear();
extern fcell_t forth_errno();
extern int forth_eval_string(char *input);

// Basic Execution Tokens
extern fcell_xt xt_dosys;
extern fcell_xt xt_docolon;
extern fcell_xt xt_quits;
extern fcell_xt xt_exits;
extern fcell_xt xt_interpret;

#include "dict.h"
#include "utilities.h"

#define FORTH_DEFINE_HEADERS
  #include "xmacros.h"
  #include "xmacros.inner.h"
  #include "xmacros.core.h"
  #include "xmacros.outer.h"
#undef FORTH_DEFINE_HEADERS

#endif // _FORTHWITH_HEADER_
