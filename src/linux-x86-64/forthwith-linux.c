
#define FW_CUSTOM_TOB_FLUSH

#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"
#include "utilities.h"

// Define Primitives, including function bodies, etc
#define FORTH_DEFINE_PRIMITIVES
  #include "xmacros.h"
  #include "xmacros.core.h"
  #include "xmacros.outer.h"
  #include "xmacros.inner.h"
#undef FORTH_DEFINE_PRIMITIVES

#include "dict.c"
#include "forthwith.c"
#include "utilities.c"
#include "prompt.c"


extern fw_ctx_t *ctx;
extern fw_ctx_stack_t *ctx_psp;


void forth_flush_tob() {
  int idx = ctx->vars->tob_idx;
  char *buff = calloc(1, idx + 1);
  stpncpy(buff, ctx->vars->tob_str, idx);
  puts(buff);

  memset(ctx->vars->tob_str, 0, ctx->vars->tob_len);
  ctx->vars->tob_idx = 0;
}
