CFLAGS = -Wall -Os -g -fomit-frame-pointer -fno-asynchronous-unwind-tables -m64 -Wno-unused-function

# -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -m64

# CC = clang

# SRCS = src/forthwith.c src/utilities.c src/access.c src/dict.c src/inner.c src/core.c
# OBJS = $(SRCS:src/%.c=_build/%.o)

all: _build/forthwith-linux _build/test-forthwith-linux

_build/forthwith-linux.a: _build/forthwith-linux.o
	ar rcs $@ $<

_build/forthwith-linux: _build/forthwith-main.o _build/forthwith-linux.o
	$(CC) -o $@.S $(CFLAGS) -S $^
	$(CC) -o $@ $(CFLAGS) $^

_build/test-forthwith-linux: src/test/test.c _build/forthwith-linux.o 
	$(CC) -o $@ $(CFLAGS) -Isrc/ $^

_build/%.o: src/%.c
	${CC} ${CFLAGS} $< -E -o $@.post.c
	${CC} ${CFLAGS} $< -S -o $@.S
	${CC} ${CFLAGS} $< -c -o $@

_build/%.o: src/test/%.c
	${CC} ${CFLAGS} $< -c -o $@


test: forthwith
	./forthwith test.fth


clean:
	rm -Rf _build/*

.PHONY: clean examples test

