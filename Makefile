CFLAGS = -Wall -O3 -g

fastr: fastr.c fastr.h
	$(CC) fastr.c -o $@ $(CFLAGS)

test: fastr
	./fastr test.fth


.PHONY: clean examples test

