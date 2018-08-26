
#define FW_CUSTOM_TOB_FLUSH
#define FW_TRACE
#define FORTHWITH_NO_CHECKS

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



extern void forth_flush_tob();
