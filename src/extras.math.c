
__fw_noinline__
fw_call dodivquot() {
  fcell_t b = forth_pop();
  fcell_t a = forth_pop();

  forth_push(a % b);
  forth_push(a / b);
}

__fw_noinline__
fw_call dolss() {
  fcell_t s = forth_pop();
  fcell_t N = forth_pop();

  forth_push(N << s);
}

__fw_noinline__
fw_call dorss() {
  fcell_t s = forth_pop();
  fcell_t N = forth_pop();

  forth_push(N >> s);
}


__fw_noinline__
fw_call dopick() {
  fcell_t n = forth_pop();

  if (n <= ctx_psp->head - ctx_psp->base ) {
    // pick nth
    fcell_t s = ctx_psp->head[-n - 1];
    forth_push(s);
  } else {
    // set error, n is too large
    ctx_vars->error = FW_ERR_STACKUNDERFLOW;
  }
}

