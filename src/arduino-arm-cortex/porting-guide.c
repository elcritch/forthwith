

#include <stddef.h>
#include <stdint.h>

#include "forthwith-linux-consts.h"

#include "forthwith.h"
#include "dict.h"
#include "prompt.h"
#include <stdarg.h>

char output[4096];

void printf(char *fmt, ...) {
  va_list ap;
  volatile fcell_t i, sum, count;

  va_start (ap, 3);         /* Initialize the argument list. */

  sum = 0;
  for (i = 0; i < count; i++)
    sum += va_arg (ap, fcell_t);    /* Get the next argument value. */

  va_end (ap);                  /* Clean up. */
}

#include "porting-guide-examples.c"

