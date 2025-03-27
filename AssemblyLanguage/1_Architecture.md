# Fundamentals of architecture

## General Design
```
|      CPU      |  |---> Memory
--------------------
| CU | ALU | ...|  |---> I/O Devices
```

CU = Decodes the instructions
ALU = As the name suggests Arithmetic and Logical Unit

The middle part is the bus, that interacts with Memory and I/O Devices.

## Memory Structure
```
    1 2 3 4 5 6 7 8
0 : 1 0 1 0 1 0 1 1
1 : 1 0 1 0 1 0 1 1
2 : 1 0 1 0 1 0 1 1
3 : 1 0 1 0 1 0 1 1
4 : 1 0 1 0 1 0 1 1
5 : 1 0 1 0 1 0 1 1
```
- Byte is the entity that is addressible in the memory.
- The bit on the 8^th index is called the LSB.
- There is another term called word (= 2 bytes). Similary there is double word, and quad word.

## Intel's architecture

IA-32e Mode
|
|----> 64-bid Mode = 64 bit OS and 64 bit programs
|
|----> Compatibility Mode = 16 and 32 bits programs run on 64-bit OS

- 16 64-bit general purpose registers.
- 64 bit flags register RFLAGS.
- 64 bit instruction poiter RIP:
  1. Extract the instruction present at the address.
  2. Execute the instruction.
  3. Increment the address to move on to the next instruction.
- 48 bit virtual address support.

- 64 bit address => 16 exabytes of memory which it way too much
- 48 bits are only used to access an address of a location, the rest of the 16 bits are in cannonical form .i.e they are either entirely 1's or entirely 0's. If the address to be accessed has combination of 0's and 1's in these 16 bits then the CPU gives a segfault.

## Tale of registers

- 64-bit registers: RAX, RBX, RCX, RDX, RSI, RDI, R8, R9, R10, R11, R12, R13, R14, R15, RBP, RSP

There are some other registers too for 32, 16 and 8 bit. The lower bits are access while using the registers.
```
|    RAX   |
     | EAX | 
        |AX|
```
