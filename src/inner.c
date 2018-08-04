#include <stdint.h>

/*
  Example of Direct Threaded vs Indirect Threaded code:

  |---------------|-----------|
  | Direct:       | Indirect: |
  |---------------|-----------|
  | SQUARE:       | SQUARE:   | <- the thread (address is the first elem)
  |   CALL DOCOL  |   &DOCOL  | <- &DOCOL, aka execution token "XT" in IDC lingo
  |   &DUP        |   &DUP    |            where the XT defines the threads type
  |   &MUL        |   &MUL    |
  |   &EXIT       |   &EXIT   |
  |---------------|-----------|

 */

/* Execute Indirect Thread's XT (mnemonic handle 'next XT')*/
forth_call next(FORTH_REGISTERS) {
  /* `load(IP)` -> `W`  -- fetch memory pointed by IP into "W" register
      ...W now holds address of the thread's execution-token */
  w = *ip;
  /* IP++ -> IP advance IP, just like a program counter */
  ip++;
  /* `load(W)` -> `X`  -- dereference indirect thread's execution-token
      e.g. fetch memory pointed by W into "X" register
      ...X now holds address of the machine code to exec,
      one of docol, dovar, doconst, or native instruction */
  x = *w;
  /* JP (X)  -- jump to the address in the X register */
  jump_addr(x);
}

forth_call exits(FORTH_REGISTERS) {
  /* `pop IP` <- `RSP` -- load previous thread's last IP position */
  popr(ip);
  jump(next);
}

/* Core Execution Token Implementations */
forth_call docolon(FORTH_REGISTERS) {
  /* PUSH IP -> RSP  -- onto the "return address stack" */
  pushr(ip);
  /* `W++` -> `IP` -- `W` still points to the thread's token-code,
      so `W++` is the address of the thread body (list of IDC addrs)!  */
  ip = w + sizeof(fcell_t);
  jump(next);
}

forth_call doconst(FORTH_REGISTERS) {
  /* `load IP` -> `RSP` -- onto the "return address stack" */
  x = *ip;
  pushd(x);
  jump(next);
}

forth_call dovar(FORTH_REGISTERS) {
  /* TODO: impl.... push address of a "variable" onto PSP */
  x = *ip;
  pushd(x);
  jump(next);
}

// Table stuff

struct header {
  uint8_t count;
  char[] head;
  fcell_t* code;
};

#define _HEADER(nstr, nval) {sizeof(nstr), nstr, &nval}
#define HEADER(n) _HEADER("" ## n "", n)

struct header words[] = [HEADER(enter),
                         HEADER(next),
                         HEADER(docolon),
                         HEADER(doexit),
                         ];

int main() {

  printf(words);
}

