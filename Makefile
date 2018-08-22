BASE_CFLAGS = -Wall -fomit-frame-pointer -fno-asynchronous-unwind-tables -m64 -Wno-unused-function -Isrc/

CFLAGS = -Wall -O3 -DFW_TRACE -g $(BASE_CFLAGS)
# CFLAGS = -Wall -O3 $(BASE_CFLAGS)


CC = clang
# CC = gcc

# PRU_LINKER_COMMAND_FILE=./AM335x_PRU.cmd
PINCLUDE=--include_path=src/ --include_path=$(PRU_LIB)/pru/include/ --include_path=$(PRU_LIB)/pru/include/am335x
PSTACK_SIZE=0x100
PHEAP_SIZE=0x100

#Common compiler and linker flags (Defined in 'PRU Optimizing C/C++ Compiler User's Guide)
PCFLAGS=-v3 -O2 --c99 -k --display_error_number --endian=little --hardware_mac=on --obj_directory=_build/ --pp_directory=_build/ -ppd -ppa -DFW_NO_CORE_MULTIPLY -DFORTHWITH_NO_CHECKS
#Linker flags (Defined in 'PRU Optimizing C/C++ Compiler User's Guide)
PLFLAGS=--reread_libs --warn_sections --stack_size=$(STACK_SIZE) --heap_size=$(HEAP_SIZE)

pru: _build/forthwith-pru 
linux: _build/forthwith-linux _build/test-forthwith-linux 

_build/forthwith-linux.a: _build/forthwith-linux.o
	ar rcs $@ $<

_build/forthwith-linux: _build/forthwith-main.o _build/forthwith-linux.o
	$(CC) -o $@.S $(CFLAGS) -S $^
	$(CC) -o $@ $(CFLAGS) $^

_build/test-forthwith-linux: src/test/test.c _build/forthwith-linux.o
	$(CC) -o $@ $(CFLAGS) -Isrc/ -Isrc/linux-x86-64/ $^


# $(PRU_CGT)/bin/clpru --section_sizes=on $(PCFLAGS) -z -i$(PRU_CGT)/lib -i$(PRU_CGT)/include $(PLFLAGS) -o $@ $^ -m$(MAP) $(LINKER_COMMAND_FILE) --library=libc.a $(PRU_LIBS)
_build/forthwith-pru: _build/forthwith-main.o _build/forthwith-pru.o
	$(PRU_CGT)/bin/arpru r $(TARGET) $(OBJECTS)
	$(PRU_CGT)/bin/dispru --all $@ > $@.S

_build/%.o: src/%.c
	${CC} ${CFLAGS} $< -E -o $@.post.c
	${CC} ${CFLAGS} $< -S -o $@.S
	${CC} ${CFLAGS} $< -c -o $@

_build/%.o: src/test/%.c
	${CC} ${CFLAGS} $< -c -o $@

_build/%.o: src/linux-x86-64/%.c
	$(PRU_CGT)/bin/clpru --include_path=$(PRU_CGT)/include $(PINCLUDE) $(PCFLAGS) -fe $@ $<


_build/%.o: src/beagle-pru/%.c
		$(PRU_CGT)/bin/clpru --include_path=$(PRU_CGT)/include $(PINCLUDE) $(PCFLAGS) -fe $@ $<


test: forthwith
	./forthwith test.fth


clean:
	rm -Rf _build/*

.PHONY: clean examples test

