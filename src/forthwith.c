#include <stdlib.h>

#include "forthwith.h"


// TODO: fix implicit global...
struct forthwith_context context;

fw_context_t *ctx;

#define global_state ctx->var_head


int forth_init() {
  uint8_t cell_sz = sizeof(fcell_t);

  struct forthwith_context nctx = {
    .psp_size =  128 * cell_sz,
    .rsp_size =  128 * cell_sz,
    .user_size =   64 * cell_sz,
    .dict_size = 512 * cell_sz,
  };

  nctx.psp_base = nctx.psp_head = calloc(1, nctx.psp_size);
  nctx.rsp_base = nctx.rsp_head = calloc(1, nctx.rsp_size);
  nctx.user_base = nctx.user_head = calloc(1, nctx.user_size);
  nctx.dict_base = nctx.dict_head = calloc(1, nctx.dict_size);

  context = default_ctx;
  ctx = &context;

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

