
#define FW_CUSTOM_TOB_FLUSH
#define FW_CUSTOM_READLINE
/* #define FW_TRACE */

#include "forthwith-arduino-cortex.h"
#include "../forthwith.h"
#include "../dict.h"
#include "../utilities.h"


#ifdef __cplusplus
extern "C" {
#endif

// Define Primitives, including function bodies, etc
#define FORTH_DEFINE_PRIMITIVES
  #include "../xmacros.h"
  #include "../xmacros.inner.h"
  #include "../xmacros.core.h"
  #include "../xmacros.outer.h"
  #ifndef FW_NO_EXTRAS
    #include "../xmacros.extras.h"
  #endif // FW_NO_EXTRAS
#undef FORTH_DEFINE_PRIMITIVES

#include "../dict.c"
#include "../forthwith.c"
#include "../utilities.c"
#include "../prompt.c"
#include "../extras.math.c"


extern fw_ctx_stack_t *ctx_psp;
extern void forth_flush_tob();
extern fcell_t forth_tib_readline();

#ifdef __cplusplus
}
#endif

