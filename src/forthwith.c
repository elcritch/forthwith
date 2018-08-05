#include <stdlib.h>

#include "forthwith.h"


// TODO: fix implicit global...
struct forthwith_context ctx;

#define global_state ctx->var_head


int forth_init() {
  uint8_t cell_sz = sizeof(fcell_t);

  struct forthwith_context default_ctx = {
    .psp_size =  128 * cell_sz,
    .rsp_size =  128 * cell_sz,
    .user_size =   64 * cell_sz,
    .dict_size = 512 * cell_sz,
  };

  ctx.psp_base = ctx.psp_head = calloc(1, ctx.psp_size);
  ctx.rsp_base = ctx.rsp_head = calloc(1, ctx.rsp_size);
  ctx.user_base = ctx.user_head = calloc(1, ctx.user_size);
  ctx.dict_base = ctx.dict_head = calloc(1, ctx.dict_size);

  ctx = default_ctx;

  return -1;
}

int forth_bootstrap(fw_ctx_t* ctx) {
  /* fcell_t* user_head = ctx->user_head; */

  /* dict_create */
  return -1;
}

fcell_t* forth_alloc_var(fw_ctx_t* ctx) {
  return ctx->user_head++;
}

