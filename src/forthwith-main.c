
#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

#include <stdio.h>
#include <string.h>

int doeval() {
  // Vars
  fcell_xt* var[3] = {0};

  int i = 0, n = 3;

  // Allocate initial intp commands
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  // Colons
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  forth_eval(var[0]);
}

void print_stack() {
  printf("(");
  for (fcell_t *i = ctx->psp->base; i < ctx->psp->head; i++) {printf("%ld, ", *i);}
  printf(") ");
}

void print_eol() {
  printf("\n\0x3");
}

int doprompt(char *rx_buff, int rx_len, char *tx_buff, int tx_len) {
  int errno = forth_errno();
  int cnt = forth_count();

  print_stack();
  printf("> ");

  int bytes_read = getline(&rx_buff, &rx_len, stdin);

  ctx->vars->tib_str = rx_buff;
  ctx->vars->tib_len = bytes_read;
  ctx->vars->tib_idx = 0;

  doeval();

  if (errno == FW_OK) {
    printf("OK\0x6");
    print_eol();
  } else if (errno == FW_ERR_STACKUNDERFLOW) {
    printf("\0x3\n");
    print_eol();
  } else if (errno == FW_ERR_NOWORD) {
    printf("\0x3\n");
    print_eol();
  }


  return errno;
}

int main(int argc, char** argv) {

  forth_init();
  forth_bootstrap(ctx);

  char *rx_buff[128];
  char *tx_buff[128];

  int status = 0;

  for (;;) {
    status = doprompt(rx_buff, 128, tx_buff, 128);
  } 

  return 0;
}
