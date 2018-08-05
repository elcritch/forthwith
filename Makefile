CFLAGS = -Wall -O3 -g

forthwith: forthwith.c forthwith.h
	$(CC) forthwith.c -o $@ $(CFLAGS)

test: forthwith
	./forthwith test.fth


.PHONY: clean examples test

