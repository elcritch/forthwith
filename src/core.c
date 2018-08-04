
#include "fastr.h"

forth_call drop(FORTH_REGISTERS) {
  popd(tos);
  jump(next);
}

forth_call dup(FORTH_REGISTERS) {
  pushd(OS);
  jump(next);
}

forth_call swap(FORTH_REGISTERS) {
  x = tos;
  popd(tos);
  pushd(x);
  jump(next);
}

forth_call add(FORTH_REGISTERS) {
  pop(x);
  tos += x;
  jump(next);
}

/* primitive '=', equals */
forth_call equals(FORTH_REGISTERS) {
  pop(x);
  tos = tos == x;
  jump(next);
}

/* primitive: `0branch` {offset} ( cond – ) :  If cond is 0, increment */
forth_call zbranch(FORTH_REGISTERS) {
{
  if (tos == 0) {
    x = *ip; // dereference 'offset' stored at `*IP`
    ip += x; // add offset to `IP`
  }
  pop(tos);
  jump(next);
}

/* primitive: `branch` {offset} ( – ) :  Increments the IP by offset */
forth_call branch(FORTH_REGISTERS) {
{
  x = *ip; // dereference 'offset' stored at `*IP`
  ip += x; // add offset to `IP`
  jump(next);
}

