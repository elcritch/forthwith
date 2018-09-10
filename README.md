# ForthWith

**ForthWith** is designed to make it easy to write programs with deterministic timing in scripting languge setting. There is no GC. There be danger. There be low-level assembly. There be fun. This project started with the desire to create a Forth-variant to run on the BeagleBone PRU units which use a vendor provided C compiler and assembler. C functions with embedded assembly proved a convenient method to write the core interpreted threaded code (ITC) abstractions. Currently the PRU port has stalled, however, the system of using XMacros via the C preprocessor results in a very portable Forth implementation. It already works on Linux x86-64, Linux ARM (thumb), MacOS x86-64, and ARM Cortex M4. 

## Goals 

The primary goal of ForthWith is to remain a portable and flexible Forth-clone able to fit on PRU-sized processors with non-GCC compilers and assemblers. This imposes a number of beneficial (and some painful) restrictions on the core implementation, including the ability to separate the word dictionary and the word definitions. It also restricts the usage of GCC-specific asm features. 

A secondary goal is to be fast enough to be used with low level hardware, with features aimed at easily integrating with vendor provided BSP/ASF's most of which are in C nowadays. This allows quick porting and re-use of features including interfacing with SPI and other hardware features. 

Latly, the core implementation is unit tested with plans to unit test all of the core Forth words. Basic unit-testing of the core language appears to be missing in most other Forth-clones which I have seen. 

## Design

The core idea of the ForthWith implementation is to use a set of macro-based "primitives" to implement the core interpretive threading primitives and core words. These macro-primitives can then be implemented for each platform using inline `asm` specific to each platform. Currently this consists of around ~40 operation primitives, or about 150 lines after suppoort macros are included (on x86-64). An additional set of ~50 constants need to be defined including the mapping of registers to the ForthWith VM registers. The operation primitives consist of basics like `load_addr`, `store_addr`, `copy_reg`, `add_regs`, and so on. 

The primary functionality of ForthWith is laid out in various C function building on the appropriate macro primitives and constants. There are some small platform specific optimizations lost using this method, which is made up for the portability. It also lends itself to providing first-class C interoperability. Using C function headers generally means existing code debuggers can be used (best if they support inline/mixed asm) making initial porting more pleasant. 

Building on C and the XMacros pattern make it easy to define feature flags using ifdef's. This makes it possible to selectively enable ordisable features like data stack and return stack underflow or overflow checks at compile time. This enables safety while developing new code, but extra speed when running well tested production code. 






