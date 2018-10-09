#!/bin/sh

cat library/core.fth | \
  grep -v '^$' | \
  grep -v '^\\' | \
  perl -pe 'BEGIN{ print "\n#include \"core-lib.h\"\n\nconst char *fw_core_lib[MAX_CORE_LIBS] = {\n"; $i = 0; }; s/;/;\\n/; s/^(.+)$/    "\1",/; $i++; END{ print "\n}; "; }' > src/core-lib.c

