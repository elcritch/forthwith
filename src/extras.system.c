
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

user_ptr_t *user_ptrs;

__fw_noinline__
fw_call douserptrsalloca() {
  fcell_t idx = forth_pop();
  fcell_t elem_count = forth_pop();
  fcell_t elem_size = forth_pop();

  user_ptr_t *user_ptr = &user_ptrs[idx];

  if (user_ptr->elem_count > 0)
    free(user_ptr->data);

  user_ptrs->data = calloc(elem_count, elem_size);
  user_ptrs->elem_count = elem_count;
  user_ptrs->elem_size = elem_size;

  forth_push( (fcell_t) user_ptr->data );
}

__fw_noinline__
fw_call douserptrs() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = &user_ptrs[idx];

  forth_push( (fcell_t)user_ptr->data);
}

__fw_noinline__
fw_call douserptrsoff() {
  fcell_t idx = forth_pop();
  fcell_t offset = forth_pop();

  user_ptr_t *user_ptr = &user_ptrs[idx];

  if (offset < user_ptr->elem_count) {
    char *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    forth_push( (fcell_t)ptr);
  } else {
    /* forth_push( (fcell_t) NULL ); */
  }
}

__fw_noinline__
fw_call douserptrsset() {
  fcell_t idx = forth_pop();
  fcell_t offset = forth_pop();
  fcell_t value = forth_pop();

  user_ptr_t *user_ptr = &user_ptrs[idx];

  if (offset < user_ptr->elem_count) {
    uint8_t *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    memcpy(ptr, &value, user_ptr->elem_size);
  } else {
    /* forth_push( (fcell_t) NULL ); */
  }
}

__fw_noinline__
fw_call douserptrsget() {
  fcell_t idx = forth_pop();
  fcell_t offset = forth_pop();
  fcell_t value;

  user_ptr_t *user_ptr = &user_ptrs[idx];

  if (offset < user_ptr->elem_count) {
    uint8_t *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    memcpy(&value, ptr, user_ptr->elem_size);
    forth_push(value);
  } else {
    /* forth_push( (fcell_t) NULL ); */
  }
}

__fw_noinline__
fw_call douserptrsfree() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = &user_ptrs[idx];
  if (user_ptr->elem_count > 0)
    free(user_ptr->data);

  user_ptr->elem_size = 0;
  user_ptr->elem_count = 0;
}

