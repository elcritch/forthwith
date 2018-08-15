
#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

// Define Primitives, including function bodies, etc
#define FORTH_DEFINE_PRIMITIVES
  #include "xmacros.h"
  #include "inner.c"
  #include "outer.c"
  #include "core.c"
#undef FORTH_DEFINE_PRIMITIVES

#include "dict.c"
#include "forthwith.c"


extern fw_ctx_t *ctx;
extern fw_ctx_stack_t *ctx_psp;

