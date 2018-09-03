
__fw_noinline__
fw_call dodiv() {
  fcell_t a = forth_pop();
  fcell_t b = forth_pop();

  forth_push(a / b);
}

__fw_noinline__
fw_call dolss() {
  fcell_t a = forth_pop();
  fcell_t b = forth_pop();

  forth_push(a << b);
}

__fw_noinline__
fw_call dorss() {
  fcell_t a = forth_pop();
  fcell_t b = forth_pop();

  forth_push(a >> b);
}

