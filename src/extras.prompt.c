
#ifdef FW_STDIO

void forth_flush_tob() {
  fcell_t idx = ctx_vars->tob_idx;
  char *buff = ctx_vars->tob_str;

  for (fcell_t i = 0; i < idx; i++) {
    if (buff[i] == '\0')
      printf("\\0");
    else
      printf("%c", buff[i]);
  }

  memset(ctx_vars->tob_str, 0, ctx_vars->tob_len);
  ctx_vars->tob_idx = 0;
}

#endif // FW_STDIO

