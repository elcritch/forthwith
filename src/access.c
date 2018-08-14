
#include "forthwith.h"

/* Native Primities */

/* primitive '@' ~ fetch */
forth_primitive("@", 1, f_normal, fetch, "( p -- n )", {
  pushd(tos);
  load_addr(tos, tos);
  jump(next);
});

/* primitive 'c@' ~ char_fetch */
forth_primitive("c@", 3, f_normal, cfetch, "( n n -- n )", {
  pushd(tos);
  load_addr_byte(tos, tos);
  jump(next);
});

// x86 asm is a pita ...
/* /\* primitive 'cmove' ( n n -- ) ~ store *\/ */
/* forth_primitive("cmove", 5, f_normal, cmove, "( n p p -- )", { */
/*   popd(b); // pop arg */
/*   popd(c); // pop arg */
/*   copy_mem(c, b, tos); */
/*   popd(tos); // fix stack / tos */
/*   jump(next); */
/* }); */

