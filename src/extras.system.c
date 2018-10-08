
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

/* user_ptr_t *user_ptrs; */
/* fcell_t user_ptrs_count = 0; */

struct user_ptrs_array user_ptrs;

__fw_noinline__
fw_call docellsz() {
  forth_push(sizeof(fcell_t));
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

__fw_noinline__
fw_call douserptrsalloca() {
  fcell_t idx = forth_pop();
  fcell_t elem_size = forth_pop();
  fcell_t elem_count = forth_pop();

  if (idx >= user_ptrs.count) {
    forth_push(0);
    return;
  }

  user_ptr_t *user_ptr = &user_ptrs.ptrs[idx];

  if (user_ptr->elem_count > 0)
    free(user_ptr->data);

  user_ptr->data = calloc(elem_count, elem_size);
  user_ptr->elem_count = elem_count;
  user_ptr->elem_size = elem_size;

  forth_push( (fcell_t) user_ptr );
}

__fw_noinline__
fw_call douserptrs() {
  fcell_t idx = forth_pop();

  if (idx >= user_ptrs.count) {
    forth_push(0);
    return;
  }

  user_ptr_t *user_ptr = user_ptrs.ptrs + idx;

  forth_push( (fcell_t)user_ptr);
}

__fw_noinline__
fw_call douserptrsoff() {
  fcell_t idx = forth_pop();
  fcell_t offset = forth_pop();

  if (idx >= user_ptrs.count) {
    forth_push(0);
    return;
  }

  user_ptr_t *user_ptr = user_ptrs.ptrs + idx;

  if (offset < user_ptr->elem_count) {
    char *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    forth_push( (fcell_t)ptr);
  } else {
    forth_push( 0 );
  }
}

__fw_noinline__
fw_call douserptrsset() {
  user_ptr_t *user_ptr = (user_ptr_t*) forth_pop();
  fcell_t offset = forth_pop();
  fcell_t value = forth_pop();

  if (offset < user_ptr->elem_count) {
    uint8_t *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    memcpy(ptr, &value, user_ptr->elem_size);
  } else {
    forth_push( 0 );
  }
}

__fw_noinline__
fw_call douserptrsget() {
  user_ptr_t *user_ptr = (user_ptr_t*) forth_pop();
  fcell_t offset = forth_pop();

  fcell_t value;

  if (offset < user_ptr->elem_count) {
    uint8_t *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    memcpy(&value, ptr, user_ptr->elem_size);
    forth_push(value);
  } else {
    forth_push( 0 );
  }
}

__fw_noinline__
fw_call douserptrsfree() {
  fcell_t idx = forth_pop();

  if (idx >= user_ptrs.count) {
    forth_push(0);
    return;
  }

  user_ptr_t *user_ptr = &user_ptrs.ptrs[idx];

  if (user_ptr->elem_count > 0)
    free(user_ptr->data);

  user_ptr->elem_size = 0;
  user_ptr->elem_count = 0;
}

