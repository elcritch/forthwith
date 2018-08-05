
#include "forthwith.h"

#define FORTH_DROP  "drop", f_normal // ( n -- )
fw_call drop(FORTH_REGISTERS) {
  popd(tos);
  jump(next);
}

#define FORTH_DUP  "dup", f_normal // ( n -- n n )
fw_call dup(FORTH_REGISTERS) {
  pushd(OS);
  jump(next);
}

#define FORTH_SWAP  "swap", f_normal // ( x y -- x y )
fw_call swap(FORTH_REGISTERS) {
  x = tos;
  popd(tos);
  pushd(x);
  jump(next);
}

#define FORTH_ADD  "add", f_normal // ( n n -- n )
fw_call add(FORTH_REGISTERS) {
  pop(x);
  tos += x;
  jump(next);
}

#define FORTH_EQUALS  "=", f_normal // ( n n -- n )
fw_call equals(FORTH_REGISTERS) {
  pop(x);
  tos = tos == x;
  jump(next);
}

/* primitive: `0branch` {offset} ( cond – ) :  If cond is 0, increment */
#define FORTH_ZBRANCH  "0branch", f_normal // {offst } ( cond -- )
fw_call zbranch(FORTH_REGISTERS) {
{
  if (tos == 0) {
    x = *ip; // dereference 'offset' stored at `*IP`
    ip += x; // add offset to `IP`
  }
  pop(tos);
  jump(next);
}

/* primitive: `branch` {offset} ( – ) :  Increments the IP by offset */
#define FORTH_BRANCH  "branch", f_normal // {offset} ( -- )
fw_call branch(FORTH_REGISTERS) {
{
  x = *ip; // dereference 'offset' stored at `*IP`
  ip += x; // add offset to `IP`
  jump(next);
}

