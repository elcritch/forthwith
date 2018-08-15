
// #include "forthwith.h"

forth_primitive("drop", 4, f_normal, drop, "( n -- )",  {
  popd(tos);
  jump(next);
});

forth_primitive("dup", 3, f_normal, dup, "( n -- n n )",  {
  pushd(tos);
  jump(next);
});

forth_primitive("swap", 4, f_normal, swap, "( x y -- x y )",  {
  /* X_t x; */
  copy_reg(x,tos);
  popd(tos);
  pushd(x);
  jump(next);
});

forth_primitive("rot", 3, f_normal, "( n1 n2 n3  ---  n2 n3 n1 )",  {
    /* X_t x; */
    copy_reg(c,tos);
    popd(b);
    popd(a);

    pushd(b);
    pushd(c);
    copy_reg(tos,a);

    jump(next);
});

forth_primitive("add", 3, f_normal, "( n n -- n )",  {
  popd(x);
  add_reg(tos, x); /* tos += x; */
  jump(next);
});

forth_primitive("=", 3, f_normal, "( n n -- n )",  {
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
forth_primitive("branch", 6, f_normal, branch, "{offset} ( -- )", {
  /* X_t x; */
  load_addr(x, ip); /* x = (fcell_t) *ip; // dereference 'offset' stored at `*IP` */
  add_reg(ip, x); /* ip += x; // add offset to `IP` */
  jump(next);
});

/* Increments the IP by offset to affect branching */
forth_primitive("0branch", 7, f_normal, zbranch, "{offset} ( -- )", {
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

