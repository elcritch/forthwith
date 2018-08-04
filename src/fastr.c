
#include "inner.c"
#include "core.c"

#ifndef FORTH_NO_DICT
#include "dict.c"
  #ifndef FORTH_NO_OUTER
    #include "outer.c"
  #endif // FORTH_NO_OUTER
#endif // FORTH_NO_DICT

#ifndef FORTH_NO_MEM_ACCESS
  #include "access.c"
#endif // FORTH_NO_MEM_ACCESS

