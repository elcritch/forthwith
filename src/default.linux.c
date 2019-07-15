
#include <stdint.h>
#include <stddef.h>

#define FW_STDIO
#include <stdio.h>

#define FW_CUSTOM_TOB_FLUSH

#include "forthwith.h"
#include "dict.h"
#include "utilities.h"

#ifndef FW_NO_STD_STRING
#include "str_utilities.h"
#endif // FW_NO_STD_STRING

// Define Primitives, including function bodies, etc
#define FORTH_DEFINE_PRIMITIVES
#include "xmacros.h"
#include "xmacros.core.h"
#include "xmacros.outer.h"
#include "xmacros.inner.h"
#ifndef FW_NO_EXTRAS
#include "xmacros.extras.h"
#endif // FW_NO_EXTRAS
#undef FORTH_DEFINE_PRIMITIVES

#include "dict.c"
#include "forthwith.c"
#include "utilities.c"
#include "str_utilities.c"
#include "prompt.c"
#include "extras.math.c"
#include "extras.prompt.c"
#include "extras.system.c"

extern fw_ctx_stack_t *ctx_psp;

