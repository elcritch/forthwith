
#include "forthwith.h"
#include "dict.h"
#include "core-lib.h"

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

#ifndef FW_CUSTOM_PRINT_EOL
void forth_print_eol() {
  write_str(1, "\n");
}
#else
extern void forth_print_eol();
#endif // FW_STDIO

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

int prompt_do(int read) {

  if (read == 0) {
    print_stack();
    write_str(2, "> ");
    forth_print_eol();
    forth_flush_tob();
  }

  // Buffers Pre Read
  memset(ctx_vars->tib_str, 0, tib_str_size);
  ctx_vars->tib_len = tib_str_size;
  ctx_vars->tib_idx = 0;

  int bytes_read = forth_tib_readline();

  // Buffers Post Read
  ctx_vars->tib_len = bytes_read;
  ctx_vars->tob_idx = 0;


  if (bytes_read <= 0)
    return -1;

  prompt_eval();

  int errno = forth_errno();

  if (ctx_vars->quiet > 0) {
    // Suppress output
    return bytes_read;
  }

  if (ctx_vars->state == COMPILE_MODE) {
    forth_print_eol();
    write_str(5, "CONT-");
  } else if (errno == FW_OK) {
    forth_print_eol();
    write_str(3, "OK.");
  } else if (errno == FW_ERR_STACKUNDERFLOW) {
    forth_print_eol();
    write_str(3, "<D?");
  } else if (errno == FW_ERR_RSTACKUNDERFLOW) {
    forth_print_eol();
    write_str(3, "<R?");
  } else if (errno == FW_ERR_NOWORD) {
    forth_print_eol();
    write_str(3, "W??");
  } else {
    forth_print_eol();
    write_str(4, "ERR!");
  }

  print_stack();
  write_str(2, "> ");
  forth_print_eol();
  forth_flush_tob();

  /* write_str(1, "\4"); */
  /* forth_flush_tob(); */

  return bytes_read;
}

int MAX_EVAL_LINE = 4096;

int prompt_load_lines(const char **lines) {
  int err = 0;

  // Buffers Pre Read
  const char *line;
  for (int i = 0; (line = lines[i]) != NULL; i++) {
    /* printf("line: %s\n", line); */
    int line_len = strnlen(line, MAX_EVAL_LINE );

    memcpy(ctx_vars->tib_str, line, line_len);
    ctx_vars->tib_len = line_len;
    ctx_vars->tib_idx = 0;
    ctx_vars->tob_idx = 0;

    prompt_eval();

    err = err | ctx_vars->error;
  }

  /* printf("core load status: %d\n", err); */
  forth_push(err);
  return err;
}

int prompt_load_core() {
  prompt_load_lines(fw_core_lib);
}

#ifdef FW_STDIO
#ifndef FW_CUSTOM_READLINE

int forth_tib_readline() {
  int read = getline((char**)&ctx_vars->tib_str, (size_t*)&ctx_vars->tib_len, stdin);
  return read;
}

#endif // FW_CUSTOM_READLINE
#endif // FW_STDIO


#ifdef FW_PROMPT_EXTRA_FEATURES

#endif
