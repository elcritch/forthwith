
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

  return forth_errno();
}

void print_stack() {
  printf(" (");
  for (fcell_t *i = ctx_psp->base; i < ctx_psp->head; i++) {printf("%lld, ", *i);}
  printf(") ");
}

void print_eol() {
  printf("\n\3");
}

int doprompt(char *rx_buff, size_t rx_len, char *tx_buff, size_t tx_len) {

  print_stack();
  printf("> ");

  int bytes_read = getline(&rx_buff, &rx_len, stdin);

  // Input Buffer
  rx_buff[bytes_read - 1] = '\0'; // replace newline
  ctx_vars->tib_str = rx_buff;
  ctx_vars->tib_len = bytes_read - 1;
  ctx_vars->tib_idx = 0;
  // Output Buffer
  ctx_vars->tob_str = tx_buff;
  ctx_vars->tob_len = tx_len;
  ctx_vars->tob_idx = 0;
  // Errors
  ctx_vars->state = 0;
  ctx_vars->error = 0;

  doeval();

  int errno = forth_errno();

  if (ctx_vars->tob_idx > 0) {
    for (int i = 0; i < ctx_vars->tob_idx; i++)
      printf("%c", ctx_vars->tob_str[i]);
    printf("\n");
  }
  /* printf(" (errno: %d) ", errno); */
  if (errno == FW_OK) {
    print_eol();
    printf("OK.");
  } else if (errno == FW_ERR_STACKUNDERFLOW) {
    print_eol();
    printf("<D?");
  } else if (errno == FW_ERR_RSTACKUNDERFLOW) {
    print_eol();
    printf("<R?");
  } else if (errno == FW_ERR_NOWORD) {
    print_eol();
    printf("W??");
  }


  return errno;
}

