BASE_CFLAGS = -Wall -fomit-frame-pointer -fno-asynchronous-unwind-tables -m64 -Wno-unused-function -Wno-format -Isrc/

CFLAGS = -Wall -O3 -DFW_TRACE -g $(BASE_CFLAGS)
# CFLAGS = -Wall -O3 $(BASE_CFLAGS)


CC = clang
# CC = gcc

# SRCS = src/forthwith.c src/utilities.c src/access.c src/dict.c src/inner.c src/core.c
# OBJS = $(SRCS:src/%.c=_build/%.o)

linux: _build/forthwith-linux _build/test-forthwith-linux 

_build/forthwith-linux.a: _build/forthwith-linux.o
	ar rcs $@ $<

_build/forthwith-linux: _build/forthwith-main.o _build/forthwith-linux.o
	$(CC) -o $@.S $(CFLAGS) -S $^
	$(CC) -o $@ $(CFLAGS) $^

_build/test-forthwith-linux: src/test/test.c _build/forthwith-linux.o
	$(CC) -o $@ $(CFLAGS) -Isrc/ -Isrc/linux-x86-64/ $^

_build/%.o: src/%.c
	${CC} ${CFLAGS} $< -E -o $@.post.c
	${CC} ${CFLAGS} $< -S -o $@.S
	${CC} ${CFLAGS} $< -c -o $@

_build/%.o: src/test/%.c
	${CC} ${CFLAGS} $< -c -o $@

_build/%.o: src/linux-x86-64/%.c
	${CC} ${CFLAGS} $< -c -o $@


test: forthwith
	./forthwith test.fth


clean:
	rm -Rf _build/*

.PHONY: clean examples test

