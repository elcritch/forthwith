
#include "forthwith.h"
#include <stdint.h>

forth_primitive("lit", f_normal, lit,
{
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
  pushd(tos);
  copy_reg(tos, x);
  jump(next);
});

#define FORTH_LIT  "lit", f_normal // ( n -- )
fw_call lit(FORTH_REGISTERS) {
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
  pushd(tos);
  copy_reg(tos, x);
  jump(next);
}

#define FORTH_LIT  "var", f_normal // ( n -- )
fw_call dovar(FORTH_REGISTERS) {
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
  pushd(tos);
  copy_reg(tos, x);
  jump(next);
}

variable 'state',state,0

variable '>in',to_in,0

variable '#tib',number_t_i_b,0

variable 'dp',dp,freemem

variable 'base',base,10

variable 'last',last,final

constant 'tib',t_i_b,32768

colon 'create',create
  dw xt_dp,xt_fetch,xt_last,xt_fetch,xt_comma
  dw xt_last,xt_store,xt_lit,32,xt_word,xt_count
  dw xt_plus,xt_dp,xt_store,xt_lit,0,xt_comma
  dw xt_do_semi_code
