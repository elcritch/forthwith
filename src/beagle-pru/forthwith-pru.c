
#define FW_CUSTOM_TOB_FLUSH
/* #define FW_TRACE */
#undef FORTHWITH_NO_CHECKS
#define FORTHWITH_NO_CHECKS
/* #define FW_CUSTOM_DICT_ADD */

#include "forthwith-pru.h"
#include "forthwith.h"
#include "dict.h"
#include "utilities.h"

// Define Primitives, including function bodies, etc
#define FORTH_DEFINE_PRIMITIVES
  #include "xmacros.h"
  #include "xmacros.inner.h"
  #include "xmacros.core.h"
  #include "xmacros.outer.h"
  #ifndef FW_NO_EXTRAS
    #include "xmacros.extras.h"
  #endif // FW_NO_EXTRAS
#undef FORTH_DEFINE_PRIMITIVES

#include "dict.c"
#include "forthwith.c"
#include "utilities.c"
#include "extras.math.c"
#include "extras.system.c"
/* #include "prompt.c" */


extern void forth_flush_tob();

