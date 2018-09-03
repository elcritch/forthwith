
__fw_noinline__
fw_call dodiv() {
  fcell_t b = forth_pop();
  fcell_t a = forth_pop();

  forth_push(a / b);
}

