CFLAGS = -Wall -O3 -g --std=c99

SRCS = src/forthwith.c src/utilities.c src/access.c src/dict.c src/inner.c src/core.c
OBJS = $(SRCS:src/%.c=_build/%.o)


%.o: %.c *.h
	${CC} ${CFLAGS} $< -c -o $@

_build/%.o: src/%.c
	${CC} ${CFLAGS} $< -c -o $@

forthwith-linux: _build/impl_x86.o $(OBJS)
	$(CC) -o $@ $(CFLAGS) $<

test: forthwith
	./forthwith test.fth


.PHONY: clean examples test

