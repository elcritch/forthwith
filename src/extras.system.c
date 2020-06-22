
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
    forth_push(0);
  }
}

// User Variable Pointers and Handling

/* Must be set by end user of ForthWith, e.g. manually decalred before using */
struct user_ptrs_array user_ptrs;

user_ptr_t *get_userptr(fcell_t idx) {
  if (idx >= user_ptrs.count || idx < 0) {
    ctx_vars->error = ERR_VAR_NOENT;
    return NULL;
  }

  user_ptr_t *user_ptr = user_ptrs.ptrs + idx;
  return user_ptr;
}

__fw_noinline__
fw_call douserptrsalloca() {
  fcell_t idx = forth_pop();
  fcell_t elem_size = forth_pop();
  fcell_t elem_count = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    forth_push(0);
  } else {
    if (user_ptr->elem_count > 0 || user_ptr->elem_size) {
      free(user_ptr->data);
    }

    user_ptr->data = NULL;
    user_ptr->elem_count = 0;
    user_ptr->elem_size = 0;
    user_ptr->elem_idx = 0;

    uint8_t *ptr = calloc(elem_count, elem_size);
    if (ptr != NULL) {
      user_ptr->data = ptr;
      user_ptr->elem_count = elem_count;
      user_ptr->elem_size = elem_size;
      user_ptr->elem_idx = 0;
      forth_push( (fcell_t) user_ptr->data );
    } else {
      char errmsg[128] = {0};
      sprintf(errmsg, "(!!! error allocating array [%d] !!!)", idx);
      write_str(strnlen(errmsg, 128), errmsg);
      ctx_vars->error = ERR_VAR_MALLOC;
      forth_push( (fcell_t) 0);
    }
  }
}

__fw_noinline__
fw_call douserptrs() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  forth_push( user_ptr == NULL ? 0 : user_ptr->data );
}

__fw_noinline__
fw_call douserptrsoff() {
  fcell_t idx = forth_pop();
  fcell_t offset = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    forth_push( 0 );
  } else if (offset < user_ptr->elem_count) {
    char *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    forth_push( (fcell_t)ptr);
  } else {
    forth_push( 0 );
  }
}

__fw_noinline__
fw_call douserptrselemsize() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  forth_push(user_ptr == NULL ? 0 : user_ptr->elem_size);
}

__fw_noinline__
fw_call douserptrselemcount() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  forth_push(user_ptr == NULL ? 0 : user_ptr->elem_count);
}

__fw_noinline__
fw_call user_ptrs_set(fcell_t idx, fcell_t offset, fcell_t value) {

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    return;
  } else if ( 0 <= offset && offset < user_ptr->elem_count) {
    uint8_t *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    memcpy(ptr, &value, user_ptr->elem_size);
  } else {
    ctx_vars->error = ERR_VAR_IDX_OF;
  }
}

__fw_noinline__
fw_call do_user_ptrs_get(fcell_t idx, fcell_t offset) {

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    forth_push( 0 );
  } else if ( 0 <= offset && offset < user_ptr->elem_count) {
    fcell_t value;
    uint8_t *ptr = user_ptr->data + (offset * user_ptr->elem_size);
    memcpy(&value, ptr, user_ptr->elem_size);
    forth_push(value);
  } else {
    ctx_vars->error = ERR_VAR_IDX_OF;
    forth_push( 0 );
  }
}

__fw_noinline__
fw_call douserptrsset() {
  fcell_t idx = forth_pop();
  fcell_t offset = forth_pop();
  fcell_t value = forth_pop();

  user_ptrs_set(idx, offset, value);
}

__fw_noinline__
fw_call douserptrsget() {
  fcell_t idx = forth_pop();
  fcell_t offset = forth_pop();

  do_user_ptrs_get(idx, offset);
}

__fw_noinline__
fw_call douserptrssetval() {
  fcell_t idx = forth_pop();
  fcell_t offset = 0;
  fcell_t value = forth_pop();

  user_ptrs_set(idx, offset, value);
}

__fw_noinline__
fw_call douserptrsgetval() {
  fcell_t idx = forth_pop();
  fcell_t offset = 0;

  do_user_ptrs_get(idx, offset);
}

__fw_noinline__
fw_call douserptrspush() {
  fcell_t idx = forth_pop();
  fcell_t value = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    return;
  } else if (user_ptr->elem_idx < user_ptr->elem_count
             && user_ptr->elem_idx >= 0) {
    uint8_t *ptr = user_ptr->data + (user_ptr->elem_idx * user_ptr->elem_size);
    memcpy(ptr, &value, user_ptr->elem_size);
    user_ptr->elem_idx++;
  } else {
    ctx_vars->error = ERR_VAR_ST_PUSH;
  }
}

__fw_noinline__
fw_call douserptrspop() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    forth_push( 0 );
  } else if (user_ptr->elem_idx > 0 ) {
    fcell_t value;
    --user_ptr->elem_idx;
    uint8_t *ptr = user_ptr->data + (user_ptr->elem_idx * user_ptr->elem_size);
    memcpy(&value, ptr, user_ptr->elem_size);
    forth_push(value);
  } else {
    forth_push( 0 );
  }
}

__fw_noinline__
fw_call douserptrsgetidx() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    forth_push(-1);
  } else {
    forth_push( user_ptr->elem_idx );
  }
}

__fw_noinline__
fw_call douserptrssetidx() {
  fcell_t idx = forth_pop();
  fcell_t elem_idx = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    return;
  } else if ( 0 <= elem_idx && elem_idx < user_ptr->elem_count) {
    user_ptr->elem_idx = elem_idx;
  } else {
    /* user_ptr->elem_idx = elem_idx; */
    ctx_vars->error = ERR_VAR_IDX_OF;
  }
}

__fw_noinline__
fw_call douserptrsfree() {
  fcell_t idx = forth_pop();

  user_ptr_t *user_ptr = (user_ptr_t)get_userptr(idx);
  if (user_ptr == NULL) {
    ctx_vars->error = ERR_VAR_FREE;
  } else {
    if (user_ptr->data != NULL)
      free(user_ptr->data);

    user_ptr->data = NULL;
    user_ptr->elem_size = 0;
    user_ptr->elem_count = 0;
    user_ptr->elem_idx = 0;
  }
}

