
#include "forthwith.h"
#include "dict.h"

#include <stdio.h>
#include <string.h>

void print_stack() {
  write_str(2, " (");
  for (fcell_t *i = ctx_psp->base; i < ctx_psp->head; i++) {
    write_number(*i);
    write_str(2, ", ");
  }
  write_str(2, ") ");
}

void print_eol() {
  write_str(2, "\n\3");
}

fcell_xt* var[3] = {0};
fcell_t tib_str_size = 0;

void prompt_init(char *rx_buff, fcell_t rx_len, char *tx_buff, fcell_t tx_len) {
  // Vars

  int i = 0, n = 3;

  // Allocate initial intp commands
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  // Colons
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  // Input Buffer
  ctx_vars->tib_str = rx_buff;
  ctx_vars->tib_len = rx_len;
  tib_str_size = rx_len;
  ctx_vars->tib_idx = 0;
  // Output Buffer
  ctx_vars->tob_str = tx_buff;
  ctx_vars->tob_len = tx_len;
  ctx_vars->tob_idx = 0;
}

int prompt_eval() {
  forth_eval(var[0]);
  return forth_errno();
}

#ifndef FW_CUSTOM_READLINE
fcell_t forth_tib_readline() {
  return getline(&ctx_vars->tib_str, (size_t*)&ctx_vars->tib_idx, stdin);
}
#endif // FW_CUSTOM_READLINE

int prompt_do(int read) {

  if (read > 0) {
    print_stack();
    write_str(2, "> ");
    forth_flush_tob();
  }

  // Buffers Pre Read
  memset(ctx_vars->tib_str, 0, tib_str_size);
  ctx_vars->tib_len = tib_str_size;
  ctx_vars->tib_idx = 0;

  fcell_t bytes_read = forth_tib_readline();

  // Buffers Post Read
  ctx_vars->tib_len = bytes_read;
  ctx_vars->tob_idx = 0;


  if (bytes_read <= 0)
    return -1;

  prompt_eval();

  int errno = forth_errno();

  if (errno == FW_OK) {
    print_eol();
    write_str(3, "OK.");
  } else if (errno == FW_ERR_STACKUNDERFLOW) {
    print_eol();
    write_str(3, "<D?");
  } else if (errno == FW_ERR_RSTACKUNDERFLOW) {
    print_eol();
    write_str(3, "<R?");
  } else if (errno == FW_ERR_NOWORD) {
    print_eol();
    write_str(3, "W??");
  }

  forth_flush_tob();

  return bytes_read;
}

