CFLAGS = -Wall -O3 -g

SRCS = src/forthwith.c src/access.c src/dict.c src/inner.c src/core.c

%.o: %.c *.h
	@echo "cc $< -c -o $@"
	@${CC} ${CFLAGS} $< -c -o $@

forthwith: forthwith.c forthwith.h

forthwith: forthwith.c forthwith.h
	$(CC) forthwith.c -o $@ $(CFLAGS)

test: forthwith
	./forthwith test.fth


.PHONY: clean examples test

