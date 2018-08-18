
// =============== Access Primitives ============== //

/* primitive '@' ~ fetch */
forth_core("@", 1, F_NORMAL, fetch, "( n -- )",  {
    copy_reg(x, tos);
    load_addr(tos, x);
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
    popd(x);
    copy_reg(a, tos);
    store_addr(a, x);

    popd(tos);
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

forth_core("sub", 3, F_NORMAL, sub, "( n n -- n )",  {
    popd(x);
    sub_reg(tos, x);
    jump(next);
  });

forth_core("=", 3, F_NORMAL, equals, "( n n -- n )",  {
  popd(x);
  xor_reg(tos, x);
  load_const(a, $word_max);
  xor_reg(tos, a);
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

