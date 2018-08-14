
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

forth_primitive("var", 3, f_normal, dovar, "( n -- )", {
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
  pushd(tos);
  copy_reg(tos, x);
  jump(next);
});

forth_variable("state", 5, state, 0);
forth_variable(">in", 3, to_in, 0);
forth_variable("tib", 3, number_tib, 0);
forth_variable("p", 1, freemem, 0);
forth_variable("ase", 3, base, 10);
forth_variable("ast", 3, last, 0);
forth_variable("ib", 2, tib, 32768);

forth_colon("create", 6, f_normal, create, [
  xt_dp,
  xt_fetch,
  xt_last,
  xt_fetch,
  xt_comma,
  xt_last,
  xt_store,
  xt_lit,
  32,
  xt_word,
  xt_count,
  xt_plus,
  xt_dp,
  xt_store,
  xt_lit,
  0,
  xt_comma,
  xt_do_semi_code,
]);

