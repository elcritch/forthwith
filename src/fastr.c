#include <stdint.h>

#ifdef LOCAL

#define reg_w "r15"
#define reg_x "r20"
#define reg_x "r21"

#define __jump(reg) asm("jmp " ## reg)
#define _jump(reg) __jump(reg)
#define jump(r) _jump(reg_ # r)
/* #define jump(reg) goto *((fcell_t*)reg); */
#define jump_to(r) _jump(reg_ # r)
#endif


#define fcell_t intptr_t

#define W   fcell_t // Working Register / Pointer
#define IP  fcell_t* // Interpreter Pointer
#define PSP fcell_t* // Parameter Stack Pointer
#define RSP fcell_t* // Return Stack Pointer
#define UP  fcell_t* // Return Stack Pointer
#define X   fcell_t // Return Stack Pointer
#define Y   fcell_t // Return Stack Pointer
#define TOS fcell_t // Return Stack Pointer

#define forth_call inline void

#define FORTH_REGISTERS \
      W   w,            \
      IP  ip,           \
      PSP psp,          \
      RSP rsp,          \
      X   x,            \
      Y   y,            \
      TOS tos,          \
      UP  up

#define FORTH_REG_CALL w, ip, psp, rsp, x, y, tos, up

#define push(reg) *(psp++) = reg
#define pop(reg) *(psp--) = reg

forth_call next(FORTH_REGISTERS) {
  /* (IP) -> W  fetch memory pointed by IP into "W" register
      ...W now holds address of the Code Field */
  w = *ip;
  /* IP+2 -> IP advance IP, just like a program counter
      (assuming 2-byte addresses in the thread) */
  *(ip) += sizeof(fcell_t);
  /* (W) ->  X  fetch memory pointed by W into "X" register
      ...X now holds address of the machine code  */
  x = *((fcell_t*)w);
  /* JP (X)     jump to the address in the X register */
  jump(x);
}

forth_call docolon(FORTH_REGISTERS) {
  /* PUSH IP     onto the "return address stack" */
  push(ip);
  /* W+2 -> IP   W still points to the Code Field, so W+2 is
      the address of the Body!  (Assuming a 2-byte
      address -- other Forths may be different.) */
  ip = w + sizeof(fcell_t);
  /* JUMP to interpreter ("NEXT") */
  next();
}

forth_call doexit(FORTH_REGISTERS) {
  /* PUSH IP     onto the "return address stack" */
  pop_rsp(ip);
  jump_to("interp");
}

forth_call execute(FORTH_REGISTERS) {
  w = tos;
  pop(tos);
  jump(w);
}

forth_call enter(FORTH_REGISTERS) {
  push_rsp(ip);
  pop(ip);
  next();
}

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

forth_call drop(FORTH_REGISTERS) {
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

