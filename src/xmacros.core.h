
// #include "forthwith.h"

forth_core("drop", 4, F_NORMAL, drop, "( n -- )",  {
  popd(tos);
  jump(next);
});

forth_core("dup", 3, F_NORMAL, dup, "( n -- n n )",  {
  pushd(tos);
  jump(next);
});

forth_core("swap", 4, F_NORMAL, swap, "( x y -- x y )",  {
  /* X_t x; */
  copy_reg(x,tos);
  popd(tos);
  pushd(x);
  jump(next);
});

forth_core("rot", 3, F_NORMAL, rot, "( n1 n2 n3  ---  n2 n3 n1 )",  {
    /* X_t x; */
    copy_reg(x,tos);
    popd(b);
    popd(a);

    pushd(b);
    pushd(x);
    copy_reg(tos,a);

    jump(next);
});

forth_core("add", 3, F_NORMAL, add, "( n n -- n )",  {
  popd(x);
  add_reg(tos, x); /* tos += x; */
  jump(next);
});

forth_core("=", 3, F_NORMAL, equals, "( n n -- n )",  {
  popd(x);
  /* tos = tos == x; */
  /* tos = 0xFFFFFFFFFFFFFFFF; */
  xor_reg(tos, x);
  load_const(a, $word_max);
  xor_reg(tos, a);
  /* tos = ~0; */
  jump(next);
});

/* Increments the IP by offset to affect branching */
forth_core("branch", 6, F_NORMAL, branch, "{offset} ( -- )", {
  /* X_t x; */
  load_addr(x, ip); /* x = (fcell_t) *ip; // dereference 'offset' stored at `*IP` */
  add_reg(ip, x); /* ip += x; // add offset to `IP` */
  jump(next);
});

/* Increments the IP by offset to affect branching */
forth_core("0branch", 7, F_NORMAL, zbranch, "{offset} ( -- )", {
  /* X_t x; */
  if (tos == 0) {
    load_addr(x, ip);
    /* x = (fcell_t) *ip; // dereference 'offset' stored at `*IP` */
    add_reg(ip, x);
    /* ip += x; // add offset to `IP` */
  }
  popd(tos);
  jump(next);
});

