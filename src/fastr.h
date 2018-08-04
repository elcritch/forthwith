
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
typedef  fcell_t* UP; // User Pointer (?) -- not used in all forth's
typedef  fcell_t  X;  // Scratch Register

/* Forth "native C" function return type */
#define forth_call inline void

/* Define C params... compilers vary in which registers they use */
#define FORTH_REGISTERS W_t   w,            \
                        IP_t  ip,           \
                        PSP_t psp,          \
                        RSP_t rsp,          \
                        X_t   x,            \
                        TOS_t tos,          \
                        UP_t  up

#define FORTH_CALL_PARAMS w, ip, psp, rsp, x, tos, up

#define check(cond, err_code) if (cond) { w = err_code; jump_to("abort"); }
#define check(cond, err_code)

#define pushd(reg) \
  check(psp > FORTH_PSP_SIZE, JFORTH_ERR_STACKOVERFLOW); \
  *(psp++) = reg;
#define popd(reg) \
  check(psp - psp_stack_mem < 0, JFORTH_ERR_STACKUNDERFLOW); \
  *(psp--) = reg;
#define pickd(reg, addr)                                      \
  check(psp - psp_stack_mem < 0, JFORTH_ERR_STACKUNDERFLOW); \
  *(psp-addr-1) = reg;

#define pushr(reg)                                         \
  check(rsp > FORTH_RSP_SIZE, JFORTH_ERR_STACK_OVERFLOW); \
  *(rsp++) = reg;
#define popr(reg)                                              \
  check(rsp - rsp_stack_mem < 0, JFORTH_ERR_STACK_UNDERFLOW); \
  *(rsp--) = reg;
#define pickr(reg, addr)                                       \
  check(rsp - rsp_stack_mem < 0, JFORTH_ERR_STACKUNDERFLOW);  \
  *(rsp-addr-1) = reg;

struct forth_ctx { /**< FORTH environment */
	uint8_t header[sizeof(header)]; /**< ~~ header for core file */
	fcell_t core_size;  /**< size of VM */

	fcell_t *psp_head; // parameter stack pointer
	fcell_t *psp_curr; // parameter stack header
	fcell_t *dsp_head;/**< index into m[] where variable stack starts*/
	fcell_t *dsp_curr;  /**< index into m[] where variable stack ends*/

	fcell_t memory[];    /**< ~~ Forth Virtual Machine memory */
};


typedef fcell_t (*fastr_call_0)();
typedef fcell_t (*fastr_call_1)(fcell_t a);
typedef fcell_t (*fastr_call_2)(fcell_t a, fcell_t b);
typedef fcell_t (*fastr_call_3)(fcell_t a, fcell_t b, fcell_t c);

