; this is my second first program

; include is a directive
%include "io64.inc"

; section is a directive too..
section .data ; data segment is where the data resides
counter dq 10

section .text ; text segment is where the code  resides
global CMAIN ; think of CMAIN as a program counter that point to the first instruction
CMAIN: ; any instruction is genrally of type 
       ; instruction operands comment 
    mov rbp, rsp; for correct debugging
    mov rbx, 50
    mov [counter], rbx
    xor rax, rax 
    ret