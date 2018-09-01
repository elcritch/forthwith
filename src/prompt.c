
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

void prompt_init() {
  // Vars

  int i = 0, n = 3;

  // Allocate initial intp commands
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  // Colons
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));
}

int prompt_eval() {
  forth_eval(var[0]);
  return forth_errno();
}

#ifndef FW_CUSTOM_READLINE
int forth_tib_readline(char **buff, size_t *len) {
  return getline(buff, len, stdin);
}
#endif // FW_CUSTOM_READLINE

int prompt_do(char *rx_buff, size_t rx_len, char *tx_buff, size_t tx_len) {

  print_stack();
  write_str(2, "> ");

  forth_flush_tob();

  int bytes_read = forth_tib_readline(&rx_buff, &rx_len);

  // Input Buffer
  /* rx_buff[bytes_read - 1] = '\0'; // replace newline */
  ctx_vars->tib_str = rx_buff;
  ctx_vars->tib_len = bytes_read ;
  ctx_vars->tib_idx = 0;
  // Output Buffer
  ctx_vars->tob_str = tx_buff;
  ctx_vars->tob_len = tx_len;
  ctx_vars->tob_idx = 0;

  if (bytes_read)
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

  return errno;
}

