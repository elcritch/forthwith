
#include "fastr.h"

/* Native Primities */


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
