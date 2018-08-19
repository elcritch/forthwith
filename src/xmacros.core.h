
// =============== Access Primitives ============== //

/* primitive '@' ~ fetch */
forth_core("@", 1, F_NORMAL, fetch, "( n -- n )",  {
    popd(1);
    copy_reg(x, s1);
    load_addr(s1, x);
    pushd(1);
    jump(next);
  });

/* /\* primitive 'c@' ~ char_fetch *\/ */
/* forth_core("c@", 2, F_NORMAL, cfetch, "( n -- )",  { */
/*     copy_reg(x, tos); */
/*     load_addr(tos, x); */
/*     jump(next); */
/*   }); */

/* primitive '!' ~ store */
forth_core("!", 1, F_NORMAL, store, "( n addr -- )",  {
    popd(2);
    store_addr(s2, s1);
    pushd(0);
    jump(next);
  });

/* /\* primitive 'c!' ~ char_fetch *\/ */
/* forth_core("c!", 2, F_NORMAL, cstore, "( n -- )",  { */
/*     pushd(tos); */
/*     load_addr_byte(tos, tos); */
/*     jump(next); */
/*   }); */

// =============== Stack Primitives ============== //
forth_core("drop", 4, F_NORMAL, drop, "( n -- )",  {
  popd(1);
  pushd(0);
  jump(next);
});

forth_core("dup", 3, F_NORMAL, dup, "( n -- n n )",  {
  popd(1);
  copy_reg(s2, s1);
  pushd(2);
  jump(next);
});

forth_core("swap", 4, F_NORMAL, swap, "( x y -- x y )",  {
  popd(2);
  copy_reg(x,s2);
  copy_reg(s2,s1);
  copy_reg(s1,x);
  pushd(2);
  jump(next);
});

forth_core("rot", 3, F_NORMAL, rot, "( n3 n2 n1  ---  n2 n1 n3 )",  {
  popd(3);
  copy_reg(x,s3);
  copy_reg(s3, s2);
  copy_reg(s2, s1);
  copy_reg(s1, x);
  pushd(3);
  jump(next);
});

forth_core("add", 3, F_NORMAL, add, "( n n -- n )",  {
  popd(2);
  add_reg(s1, s2);
  pushd(1);
  jump(next);
});

forth_core("sub", 3, F_NORMAL, sub, "( n2 n1 -- n )",  {
    popd(2);
    sub_reg(s1, s2);
    pushd(1);
    jump(next);
  });

forth_core("=", 3, F_NORMAL, equals, "( n n -- n )",  {
  popd(2);
  copy_reg(x, s1);
  xor_reg(x, s2);
  if (x) {
    load_const(s1, $1);
  }
  pushd(1);
  jump(next);
});

/* forth_core("litstr", 6, F_NORMAL, litstr, "", { */
/*     // Get Length of String from codeword list */
/*     load_addr(x, ip); */
/*     incr_reg(ip); */

/*     pushd(ip); // push the address of the start of the string  */
/*     pushd(x); // push length on the stack  */
/*     add_reg(ip, x); // skip past the string  */

/*     add_const(ip, $3); // but round up to next 4 byte boundary  */
/*     load_const(x, $3); */
/*     not_reg(x); */
/*     and_reg(ip, x); */
/*   }); */

