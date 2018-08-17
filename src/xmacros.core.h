
forth_core("drop", 4, F_NORMAL, drop, "( n -- )",  {
  popd(tos);
  jump(next);
});

forth_core("dup", 3, F_NORMAL, dup, "( n -- n n )",  {
  pushd(tos);
  jump(next);
});

forth_core("swap", 4, F_NORMAL, swap, "( x y -- x y )",  {
  copy_reg(x,tos);
  popd(tos);
  pushd(x);
  jump(next);
});

forth_core("rot", 3, F_NORMAL, rot, "( n1 n2 n3  ---  n2 n3 n1 )",  {
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
  add_reg(tos, x); 
  jump(next);
});

forth_core("=", 3, F_NORMAL, equals, "( n n -- n )",  {
  popd(x);
  xor_reg(tos, x);
  load_const(a, $word_max);
  xor_reg(tos, a);
  jump(next);
});

/* Increments the IP by offset to affect branching */
forth_core("branch", 6, F_NORMAL, branch, "{offset} ( -- )", {
  load_addr(x, ip); 
  add_reg(ip, x); 
  jump(next);
});

/* Increments the IP by offset to affect branching */
forth_core("0branch", 7, F_NORMAL, zbranch, "{offset} ( -- )", {
  if (tos == 0) {
    load_addr(x, ip);
    add_reg(ip, x);
  }
  popd(tos);
  jump(next);
});

