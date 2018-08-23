
#include "forthwith-pru.h"
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
/* #include "prompt.c" */


extern fw_ctx_t *ctx;
extern fw_ctx_stack_t *ctx_psp;

/* __asm__("  .data"); */
/* __asm__("  .retain"); */
/* __asm__("||ABC||:  .set xt_fetch"); */
/* __asm__("          .word 0"); */
/* __asm__("  .global ||ABC||"); */

