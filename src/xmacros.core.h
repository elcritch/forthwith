
// =============== Access Primitives ============== //
forth_core("@", 1, F_NORMAL, fetch, "( n -- n )", {
    popd(1);
    copy_reg(x, s1);
    load_addr(s1, x);
    pushd(1);
    jump(next);
  });

forth_core("!", 1, F_NORMAL, store, "( n addr -- )",  {
    popd(2);
    store_addr(s2, s1);
    pushd(0);
    jump(next);
  });

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
  copy_reg(x,s3); // x <- a
  copy_reg(s3, s2); // a <- b
  copy_reg(s2, s1); // b <- c
  copy_reg(s1, x); // c <- a
  pushd(3);
  jump(next);
});

// =============== Math Primitives ============== //
forth_core("+", 1, F_NORMAL, sadd, "( n n -- n )",  {
  popd(2);
  addu_reg(s1, s2);
  pushd(1);
  jump(next);
});

forth_core("-", 1, F_NORMAL, ssub, "( n2 n1 -- n )",  {
  popd(2);
  subu_reg(s1, s2);
  pushd(1);
  jump(next);
});

#ifndef FW_NO_CORE_MULTIPLY
forth_core("*", 1, F_NORMAL, smul, "( n2 n1 -- n )",  {
  popd(2);
  muls_reg(s1, s2);
  pushd(1);
  jump(next);
});
#endif // FW_CORE_MULTIPLY

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

// =============== Bitwise Primitives ============== //

forth_core("^", 1, F_NORMAL, xor, "( n n -- n )",  {
    popd(2);
    xor_reg(s1, s2);
    pushd(1);
    jump(next);
});

forth_core("&", 1, F_NORMAL, and, "( n n -- n )",  {
    popd(2);
    and_reg(s1, s2);
    pushd(1);
    jump(next);
});

forth_core("|", 1, F_NORMAL, or, "( n n -- n )",  {
    popd(2);
    or_reg(s1, s2);
    pushd(1);
    jump(next);
});

/* forth_core("<<", 1, F_NORMAL, lshift, "( n n -- n )",  { */
/*     popd(2); */
/*     rshift_reg(s1, s2); */
/*     pushd(1); */
/*     jump(next); */
/*   }); */

/* forth_core(">>", 1, F_NORMAL, rshift, "( n n -- n )",  { */
/*     popd(2); */
/*     lshift_reg(s1, s2); */
/*     pushd(1); */
/*     jump(next); */
/*   }); */
