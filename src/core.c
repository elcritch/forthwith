

forth_call comma(FORTH_REGISTERS) {
  x = w;
  w = tos;
  tos = x;
  *val_dp = tos;
  // ??
  /* mov TOS, val_dp */
  /*   mov edi, [TOS] */
  /*   stosd */
  /*   mov [TOS], edi */
  pop(tos);
  next();
}

forth_call(drop) {
  pop(tos);
  next();
}

forth_call dup(FORTH_REGISTERS) {
  push(TOS);
  next();
}

forth_call swap(FORTH_REGISTERS) {
  x = tos;
  pop(tos);
  push(x);

  next();
}

forth_call add(FORTH_REGISTERS) {
  pop(w);
  tos += w;
  next();
}

/* primitive '=', equals */
forth_call equals(FORTH_REGISTERS) {
  pop(w);
  tos -= w;
  tos -= 1;
  tos ^= tos; // ??
  next();
}

/* primitive '@', fetch */
forth_call fetch(FORTH_REGISTERS) {
{
  tos = *tos;
  next();
}

/* primitive '!', store */
forth_call store(FORTH_REGISTERS) {
{
  pop(x);
  *tos = x;
  pop(tos);
  next();
}

/* primitive '0branch', zero_branch */
forth_call zbranch(FORTH_REGISTERS) {
{
  // ??
  if (tos == 0) {
    x = w;
    w = ip;
    ip = x;
  }
  pop(tos);
  next();
}

/* primitive 'branch',branch */
forth_call branch(FORTH_REGISTERS) {
{
  // ?? 
  ip = *ip;
  next();
}

/* primitive 'count',count */
forth_call count(FORTH_REGISTERS) {
{
  // ??
  w = (uint8_t)tos;
  tos += 1;
  push(tos);
  tos = w;
  next();
}
