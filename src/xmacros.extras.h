
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

