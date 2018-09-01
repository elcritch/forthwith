
#define FW_CUSTOM_TOB_FLUSH
#define FW_CUSTOM_READLINE

#include "forthwith-arduino-cortex.h"
#include "../forthwith.h"
#include "../dict.h"
#include "../utilities.h"

// Define Primitives, including function bodies, etc
#define FORTH_DEFINE_PRIMITIVES
  #include "../xmacros.h"
  #include "../xmacros.inner.h"
  #include "../xmacros.core.h"
  #include "../xmacros.outer.h"
#undef FORTH_DEFINE_PRIMITIVES

#include "../dict.c"
#include "../forthwith.c"
#include "../utilities.c"
#include "../prompt.c"


extern fw_ctx_stack_t *ctx_psp;
extern void forth_flush_tob();
extern int forth_tib_readline(char **buff, size_t *len);

