
#include "forthwith.h"
#include <stdint.h>

forth_primitive("lit", 3, f_normal, lit, "( -- n)",
{
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
  pushd(tos);
  copy_reg(tos, x);
  jump(next);
});

/* number base */
forth_variable("BASE", 4, base, "0", 10);
/* true = compiling, false = interpreting */
forth_variable("STATE", 5, state, "0", 0);
/* the last word to be defined */
forth_variable("LAST", 4, ctx_dict, $stack_offset_head, 0);
/*  */
forth_variable("S0", 2, ctx_psp, $stack_offset_base, 0);

/* /\* next character in input buffer *\/ */
/* forth_variable(">in", 3, to_in, 0); */
/* /\* address of the input buffer *\/ */
/* forth_variable("tib", 3, number_tib, 0); */
/* /\* number of characters in the input buffer *\/ */
/* forth_variable("#tib", 1, freemem, 0); */
/* /\* first free cell in the dictionary *\/ */
/* forth_variable("dp", 1, ctx->dict_head, 0); */

