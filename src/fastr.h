
/* Standard Forth Cell */
typedef fcell_t intptr_t;

/* Forth Execution Token (pointer to forth execution type) */
/* e.g. docolon, dovar, doconst, or machine addr */
typedef fcell_xt *fcell_t;


/* Primary Registers */
typedef fcell_xt  W_t  ;  // Working Register / Pointer
typedef fcell_xt* IP_t ;  // Instruction Pointer
typedef fcell_xt* RSP_t;  // Return Stack Pointer
typedef fcell_t*  PSP_t;  // Parameter Stack Pointer
typedef fcell_t   TOS_t;  // Top of Stack

/* Extra Registers */
typedef  fcell_t  X_t;  // Scratch Register
typedef  struct fort_ctx*  Ctx_t;  // Scratch Register

/* Forth "native C" function return type */
#define forth_call inline void

/* Define C params... compilers vary in which registers they use */
#define FORTH_REGISTERS W_t   w,            \
                        IP_t  ip,           \
                        PSP_t psp,          \
                        RSP_t rsp,          \
                        X_t   x,            \
                        TOS_t tos,          \
                        Ctx_t ctx

#define FORTH_CALL_PARAMS w, ip, psp, rsp, x, tos, up

struct forth_ctx { /**< FORTH environment */

  bool immediate;
	fcell_t *psp_base; fcell_t *psp_head; fcell_t  psp_count;
	fcell_t *rsp_base; fcell_t *rsp_head; fcell_t  rsp_count;
	fcell_t *user_base; fcell_t *user_head; fcell_t  user_count;
	fword_t *dict_base; fword_t *dict_curr; fcell_t  dict_count;
};

typedef fcell_t (*fastr_call_0)();
typedef fcell_t (*fastr_call_1)(fcell_t a);
typedef fcell_t (*fastr_call_2)(fcell_t a, fcell_t b);
typedef fcell_t (*fastr_call_3)(fcell_t a, fcell_t b, fcell_t c);

#define FORTH_PRIMITIVE(_fname, _type, _mode, cname) \
  forth_call cname(FORTH_REGISTERS)

#define check(cond, err_code) if (cond) { w = err_code; jump_to("abort"); }
#define check(cond, err_code)

#define pushd(reg)                                       \
  check(psp < (ctx->psp_base + ctx->psp_size), JFORTH_ERR_STACKOVERFLOW); \
  *(psp++) = reg;
#define popd(reg) \
  check(psp > ctx->psp_base, JFORTH_ERR_STACKUNDERFLOW);  \
  *(psp--) = reg;

#define pushr(reg)                                         \
  check(rsp > (ctx->rsp_base + ctx->rsp_size), JFORTH_ERR_STACK_OVERFLOW); \
  *(rsp++) = reg;
#define popr(reg)                                              \
  check(rsp < (ctx->rsp_base), JFORTH_ERR_STACK_UNDERFLOW);    \
  *(rsp--) = reg;

#ifndef FASTR_USERSTACK_IN_REGISTER
  #define user_head u
  #define pushu(reg)                                                     \
    check(u > (ctx->rsp_base + ctx->rsp_size), JFORTH_ERR_STACK_OVERFLOW); \
    *(u++) = reg;
  #define popu(reg)                                           \
    check(u < (ctx->user_base), JFORTH_ERR_STACK_UNDERFLOW); \
    *(u--) = reg;
#else
#define user_head ctx->user_head
  #define pushu(reg)                                                      \
    check(ctx->user_head > (ctx->user_base + ctx->user_size), JFORTH_ERR_STACK_OVERFLOW); \
    *(ctx->user_head++) = reg;
  #define popu(reg)                                           \
    check(ctx->user_head < (ctx->user_base), JFORTH_ERR_STACK_UNDERFLOW); \
    *(ctx->user_head--) = reg;
#endif // FASTR_NO_USERSTACK_OPS


#define F_IMMED 0x80
#define F_HIDDEN 0x20
#define F_LENMASK 0x1F	// length mask

