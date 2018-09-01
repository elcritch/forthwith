BASE_CFLAGS = -Wall -fomit-frame-pointer -fno-asynchronous-unwind-tables -Wno-unused-function -Isrc/

CFLAGS = -Wall -O3 -DFW_TRACE -g $(BASE_CFLAGS)
# CFLAGS = -Wall -O3 $(BASE_CFLAGS)


# CC = clang
CC = gcc

ARM_CC ?= gcc
ARM_AR ?= ar
ARM_CFLAGS=-g -Os -DFW_TRACE -ffunction-sections -Wall -Wno-unused-function -Isrc/ -fno-asynchronous-unwind-tables -Wa,-mimplicit-it=thumb

CORTEX_CC ?=
CORTEX_AR ?=
CORTEX_CFLAGS += --std=c99 --specs=nosys.specs -Wa,-mimplicit-it=thumb

# PRU_LINKER_COMMAND_FILE=./AM335x_PRU.cmd
PINCLUDE=--include_path=src/ --include_path=$(PRU_LIB)/pru/include/ --include_path=$(PRU_LIB)/pru/include/am335x
PSTACK_SIZE=0x100
PHEAP_SIZE=0x100


#Common compiler and linker flags (Defined in 'PRU Optimizing C/C++ Compiler User's Guide)
PCFLAGS=-v3 -O3 --c99 -k --display_error_number --endian=little --hardware_mac=on --obj_directory=_build/beagle-pru/ --pp_directory=_build/beagle-pru/ -ppd -ppa -DFW_NO_CORE_MULTIPLY -DFORTHWITH_NO_CHECKS
#Linker flags (Defined in 'PRU Optimizing C/C++ Compiler User's Guide)
PLFLAGS=--reread_libs --warn_sections --stack_size=$(PSTACK_SIZE) --heap_size=$(PHEAP_SIZE)

pru: _build/beagle-pru/forthwith-pru.lib _build/beagle-pru/porting-guide-pru
linux-x86: _build/linux-x86-64/forthwith-linux _build/linux-x86-64/test-forthwith-linux _build/linux-x86-64/porting-guide
linux-arm: _build/linux-arm/porting-guide _build/linux-arm/forthwith-linux _build/linux-arm/test-forthwith-linux
arduino-cortex: _build/arduino-arm-cortex/forthwith-cortex.a

# ======= Linux x86 ======= #
_build/linux-x86-64/forthwith-linux.a: _build/linux-x86-64/forthwith-linux.o
	ar rcs $@ $<

_build/linux-x86-64/forthwith-linux: _build/linux-x86-64/forthwith-main.o _build/linux-x86-64/forthwith-linux.o
	$(CC) -o $@.S $(CFLAGS) -S $^
	$(CC) -o $@ $(CFLAGS) $^

_build/linux-x86-64/test-forthwith-linux: src/test/test.c _build/linux-x86-64/forthwith-linux.o
	$(CC) -o $@ $(CFLAGS) -Isrc/ -Isrc/linux-x86-64/ $^

_build/linux-x86-64/porting-guide: src/linux-x86-64/porting-guide.c
	${CC} ${CFLAGS} $< -E -o $@.post.c
	$(CC) -o $@ $(CFLAGS) $^
	$(CC) -o $@.S $(CFLAGS) -S $^

_build/linux-x86-64/%.o: src/linux-x86-64/%.c
	${CC} ${CFLAGS} $< -E -o $@.post.c
	${CC} ${CFLAGS} $< -S -o $@.S
	${CC} ${CFLAGS} $< -c -o $@

# ======= Linux Arm ======= #
_build/linux-arm/forthwith-linux.a: _build/linux-arm/forthwith-linux.o
	$(ARM_AR) rcs $@ $<

_build/linux-arm/forthwith-linux: _build/linux-arm/forthwith-main.o _build/linux-arm/forthwith-linux.o
	$(ARM_CC) -o $@.S $(ARM_CFLAGS) -S $^
	$(ARM_CC) -o $@ $(ARM_CFLAGS) $^

_build/linux-arm/test-forthwith-linux: src/test/test.c _build/linux-arm/forthwith-linux.o
	$(ARM_CC) -o $@ $(ARM_CFLAGS) -Isrc/ -Isrc/linux-arm/ $^
	$(ARM_CC) -S -o $@.S $(ARM_CFLAGS) -Isrc/ -Isrc/linux-arm/ $^

_build/linux-arm/porting-guide: src/linux-arm/porting-guide.c 
	${ARM_CC} ${ARM_CFLAGS} $< -E -o $@.post.c
	$(ARM_CC) -o $@ $(ARM_CFLAGS) $^
	$(ARM_CC) -o $@.S $(ARM_CFLAGS) -S $^

_build/linux-arm/%.o: src/linux-arm/%.c
	${ARM_CC} ${ARM_CFLAGS} $< -S -o $@.S
	${ARM_CC} ${ARM_CFLAGS} $< -E -o $@.post.c
	${ARM_CC} ${ARM_CFLAGS} $< -c -o $@

# ======= Arduino Arm Cortex ======= #
_build/arduino-arm-cortex/forthwith-cortex.a: _build/arduino-arm-cortex/forthwith-arduino-cortex.o
	$(CORTEX_AR) rcs $@ $<

# _build/arduino-arm-cortex/test-forthwith-linux: src/test/test.c _build/arduino-arm-cortex/forthwith-linux.o
# 	$(CORTEX_CC) -o $@ $(CORTEX_CFLAGS) -Isrc/ -Isrc/arduino-arm-cortex/ $^
# 	$(CORTEX_CC) -S -o $@.S $(CORTEX_CFLAGS) -Isrc/ -Isrc/arduino-arm-cortex/ $^

_build/arduino-arm-cortex/porting-guide: src/arduino-arm-cortex/porting-guide.c
	${CORTEX_CC} ${CORTEX_CFLAGS} $< -E -o $@.post.c
	$(CORTEX_CC) -o $@ $(CORTEX_CFLAGS) $^
	$(CORTEX_CC) -o $@.S $(CORTEX_CFLAGS) -S $^

_build/arduino-arm-cortex/%.o: src/arduino-arm-cortex/%.c
	${CORTEX_CC} ${CORTEX_CFLAGS} $< -S -o $@.S
	${CORTEX_CC} ${CORTEX_CFLAGS} $< -E -o $@.post.c
	${CORTEX_CC} ${CORTEX_CFLAGS} $< -c -o $@

# ======= Beagle PRU ======= #
_build/beagle-pru/porting-guide-pru: src/beagle-pru/porting-guide.c _build/beagle-pru/forthwith-pru.lib
	$(PRU_CGT)/bin/clpru --include_path=$(PRU_CGT)/include $(PINCLUDE) $(PCFLAGS) -fe $@ $<
	$(PRU_CGT)/bin/dispru --all $@ > $@.S

_build/beagle-pru/forthwith-pru.lib: _build/beagle-pru/forthwith-pru.o
	$(PRU_CGT)/bin/arpru r $@ $^

_build/beagle-pru/%.o: src/beagle-pru/%.c
	$(PRU_CGT)/bin/clpru --include_path=$(PRU_CGT)/include $(PINCLUDE) $(PCFLAGS) -fe $@ $<
	$(PRU_CGT)/bin/dispru --all $@ > $@.S


test: forthwith
	./forthwith test.fth

clean:
	rm -Rf _build/*
	mkdir _build/linux-x86-64/
	mkdir _build/linux-arm/
	mkdir _build/arduino-arm-cortex/
	mkdir _build/beagle-pru/

clean-cortex:
	rm -Rf _build/arduino-arm-cortex/
	mkdir _build/arduino-arm-cortex/

clean-arm:
	rm -Rf _build/linux-arm/
	mkdir _build/linux-arm/

clean-x86:
	rm -Rf _build/linux-x86/
	mkdir _build/linux-x86/

clean-pru:
	rm -Rf _build/beagle-pru/
	mkdir _build/beagle-pru/

.PHONY: clean examples test

