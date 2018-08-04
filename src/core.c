
/* Primitive "," ( n n -- ) ~ comma, create new var in dict */
forth_call comma(FORTH_REGISTERS) {
  x = Global(variable_stack);
  *x = tos;
  Global(variable_stack)++;
  popd(tos);
  next();
}

forth_call drop(FORTH_REGISTERS) {
  popd(tos);
  next();
}

forth_call dup(FORTH_REGISTERS) {
  pushd(OS);
  next();
}

forth_call swap(FORTH_REGISTERS) {
  x = tos;
  popd(tos);
  pushd(x);

  next();
}

forth_call add(FORTH_REGISTERS) {
  pop(x);
  tos += x;
  next();
}

/* primitive '=', equals */
forth_call equals(FORTH_REGISTERS) {
  pop(x);
  tos = tos == x;
  next();
}

/* primitive: `0branch` {offset} ( cond – ) :  If cond is 0, increment */
forth_call zbranch(FORTH_REGISTERS) {
{
  if (tos == 0) {
    x = *ip; // dereference 'offset' stored at `*IP`
    ip += x; // add offset to `IP`
  }
  pop(tos);
  next();
}

/* primitive: `branch` {offset} ( – ) :  Increments the IP by offset */
forth_call branch(FORTH_REGISTERS) {
{
  x = *ip; // dereference 'offset' stored at `*IP`
  ip += x; // add offset to `IP`
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

/* Native Primities */

#ifndef FORTH_NO_MEMORY_PRIMITIVES

/* primitive '@' ~ fetch */
 forth_call fetch(FORTH_REGISTERS) {
   tos = (fcell_t)*tos;
   jump(next);
 }

 /* primitive '!' ( n n -- ) ~ store */
 forth_call store(FORTH_REGISTERS) {
   popd(x); // pop arg
   *tos = x; // store arg -> adress in tos
   popd(tos); // fix stack / tos
   jump(next);
 }

 /* primitive 'c@' ~ char_fetch */
 forth_call char_fetch(FORTH_REGISTERS) {
   mov bl,byte[bx]
     mov bh,0
     jump(next);
 }

#endif // FORTH_NO_MEMORY_PRIMITIVES

