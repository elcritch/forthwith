
__fw_noinline__
fw_call dodivquot() {
  if (sizeof(fcell_t) == 2) {
    int32_t b = forth_pop();
    int32_t a = forth_pop();

    forth_push(a % b);
    forth_push(a / b);
  }
  else if (sizeof(fcell_t) == 4) {
    int64_t b = forth_pop();
    int64_t a = forth_pop();

    forth_push(a % b);
    forth_push(a / b);
  }
  else if (sizeof(fcell_t) == 8) {
    int64_t b = forth_pop();
    int64_t a = forth_pop();

    forth_push(a % b);
    forth_push(a / b);
  }
}

__fw_noinline__
fw_call dostartslash() {
  fcell_t n3 = forth_pop();
  fcell_t n2 = forth_pop();
  fcell_t n1 = forth_pop();

  if (sizeof(fcell_t) == 2) {
    int32_t acc0 = (int32_t) n1 * (int32_t) n2;
    int32_t acc1 = (int32_t) acc0 / (int32_t) n3;

    forth_push((fcell_t)acc1);
  }
  else if (sizeof(fcell_t) == 4) {
    int64_t acc0 = (int64_t) n1 * (int64_t) n2;
    int64_t acc1 = (int64_t) acc0 / (int64_t) n3;

    forth_push((fcell_t) acc1);
  }
  else if (sizeof(fcell_t) == 8) {
    int64_t acc0 = (int64_t) n1 * (int64_t) n2;
    int64_t acc1 = (int64_t) acc0 / (int64_t) n3;

    forth_push((fcell_t) acc1);
  }
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
fw_call dorsu() {
  fcell_t s = forth_pop();

  switch (sizeof(fcell_t)) {
    case 2: {
      uint16_t N = forth_pop();
      forth_push(N >> s);
      break;
    }
    case 4: {
      uint32_t N = forth_pop();
      forth_push(N >> s);
      break;
    }
    case 8: {
      uint64_t N = forth_pop();
      forth_push(N >> s);
      break;
    }
  }

  return;
}

