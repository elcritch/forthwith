
#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"
#include "utilities.h"

// Define Primitives, including function bodies, etc
#define FORTH_DEFINE_PRIMITIVES
  #include "xmacros.h"
  #include "xmacros.core.h"
  #include "xmacros.outer.h"
#undef FORTH_DEFINE_PRIMITIVES

#include "inner.c"
#include "dict.c"
#include "forthwith.c"
#include "utilities.c"


extern fw_ctx_t *ctx;
extern fw_ctx_stack_t *ctx_psp;

