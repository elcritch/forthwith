#include <stdlib.h>

#include "forthwith.h"

fw_ctx_stack_t *ctx_psp;
fw_ctx_stack_t *ctx_rsp;
fw_ctx_stack_t *ctx_user;
fw_ctx_regs_t *ctx_regs;
fw_ctx_vars_t *ctx_vars;
fw_ctx_dict_stack_t *ctx_dict;
fw_ctx_str_stack_t *ctx_strings;

// Builtin "Hidden" Execution Tokens
/* fcell_xt xt_dosys = (fcell_xt)&dosys; */
/* fcell_xt xt_docolon = (fcell_xt)&docolon; */
/* fcell_xt xt_lit = (fcell_xt)&lit; */
/* fcell_xt xt_quits = (fcell_xt)&quits; */
/* fcell_xt xt_exits = (fcell_xt)&exits; */

#define accessor(struct_name)                               \
  void *accessor_name(struct_name) () { return struct_name; }

accessor(ctx_psp);
accessor(ctx_rsp);
accessor(ctx_user);
accessor(ctx_regs);
accessor(ctx_vars);
accessor(ctx_dict);
accessor(ctx_strings);

#include <string.h>

__fw_noinline__
int forth_init(struct forth_init_sizes init_sizes)
{
  // Initialize contexts

  ctx_regs = calloc(1, sizeof(fw_ctx_regs_t));
  ctx_vars = calloc(1, sizeof(fw_ctx_vars_t));
  ctx_psp = calloc(1, sizeof(fw_ctx_stack_t));
  ctx_rsp = calloc(1, sizeof(fw_ctx_stack_t));
  ctx_user = calloc(1, sizeof(fw_ctx_stack_t));
  ctx_dict = calloc(1, sizeof(fw_ctx_dict_stack_t));
  ctx_strings = calloc(1, sizeof(fw_ctx_str_stack_t));

#ifdef FW_SUPPORT_NUMBER_BASES
  ctx_vars->base = 10;
#endif // FW_SUPPORT_DECIMAL_BASE

  /* ctx_vars = ctx->vars; */

  // Configure default stack sizes
  ctx_psp->size =     init_sizes.psp * sizeof(fcell_t);
  ctx_rsp->size =     init_sizes.rsp * sizeof(fcell_t);
  ctx_user->size =    init_sizes.user * sizeof(fcell_t);

  // Configure default stack sizes for non-fcell_t stacks
  ctx_dict->size =    init_sizes.dict * sizeof(fword_t);
  ctx_strings->size = init_sizes.strings * sizeof(char);

  // ===== Allocate default stacks ===== //

  /* offset by one to store a zero value before the base */
  ctx_psp->head = calloc(1, ctx_psp->size + 1);
  ctx_psp->head++;
  ctx_psp->base = ctx_psp->head;

  /* ctx_rsp->base = ctx_rsp->head = calloc(1, ctx_rsp->size); */
  ctx_rsp->head = calloc(1, ctx_rsp->size + 1);
  ctx_rsp->head++;
  ctx_rsp->base = ctx_rsp->head;

  ctx_user->base = ctx_user->head = calloc(1, ctx_user->size);
  ctx_dict->base = ctx_dict->head = calloc(1, ctx_dict->size);
  ctx_strings->base = ctx_strings->head = calloc(1, ctx_strings->size);

  return (ctx_psp->base == NULL)
         | (ctx_rsp->base == NULL)
         | (ctx_user->base == NULL)
         | (ctx_dict->base == NULL)
         | (ctx_strings->base == NULL) ;
}

__fw_noinline__
int forth_push(fcell_t val) {
  if (ctx_psp->head <= ctx_psp->base + ctx_psp->size) {
    *ctx_psp->head = val;
    ctx_psp->head++;
    return 1;
  }
  else
    return -1;
}

__fw_noinline__
fcell_t forth_pop() {
  if (ctx_psp->head > ctx_psp->base) {
    ctx_psp->head--;
    return *ctx_psp->head;
  }
  else {
    ctx_vars->error = FW_ERR_STACKUNDERFLOW;
    return 0;
  }
}

__fw_noinline__
fcell_t forth_count() {
  return ctx_psp->head - ctx_psp->base;
}

fcell_t forth_errno() {
  return ctx_vars->error;
}

void forth_clear() {
  ctx_vars->error = FW_OK;
}

__fw_noinline__
int forth_bootstrap() {

  #define FORTH_DEFINE_DICT_ENTRIES
    #include "xmacros.h"
    #include "xmacros.inner.h"
    #include "xmacros.core.h"
    #include "xmacros.outer.h"
    #include "xmacros.prompt.h"
    #ifndef FW_NO_EXTRAS
      #include "xmacros.extras.h"
    #endif // FW_NO_EXTRAS
  #undef FORTH_DEFINE_DICT_ENTRIES

  return FW_OK;
}

#include <setjmp.h>
jmp_buf env;

__fw_noinline__
fw_call forth_exec(FORTH_REGISTERS) {
  save_cenv();
  load_state();
  call(starts);
  save_state();
  load_cenv();
}

fcell_xt innerloop[2] = {
  (fcell_xt) &xt_execs,
  (fcell_xt) &xt_quits,
};

__fw_noinline__
int forth_eval(fcell_xt *instr) {

  if (ctx_vars->state == ERROR_MODE)
    ctx_vars->state = IMMEDIATE_MODE;
  ctx_vars->error = FW_OK;

  ctx_regs->w = 0;
  ctx_regs->ip = (fcell_t) innerloop;
  ctx_regs->x = 0;

  forth_push((fcell_t)instr);

  int done = 0;

  done = prepare_cenv();
  if (!done) {
    forth_exec(FORTH_REGISTER_EMPTY_LIST);
  }

  return 0;
}


int forth_eval_string(char *input) {
  return -1;
}
