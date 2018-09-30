
__fw_noinline__
fw_call doload() {
  fcell_t b = forth_pop();
  fcell_t a = forth_pop();

  forth_push(a / b);
}

typedef void (*user_cb_t)();
user_cb_t *user_calls;

__fw_noinline__
fw_call dousercalls() {
  fcell_t idx = forth_pop();
  user_cb_t user_call = user_calls[idx];

  if (user_call != NULL) {
    user_call();
  }
}

