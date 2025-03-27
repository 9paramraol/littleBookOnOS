%include "io64.inc"

; use register for 64 bits
; sign extensions
; setting r10b for changing the last byte
; or instruction and last 32 bits
; push pop 
; memory operands

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ; -------------- operators add and or work only on first 32 bits
    mov rax,0x1020304050607080
    xor rbx,rbx
    add rbx,0x1020304050607080
    xor rcx,rcx
    add rcx,rax
    ; -------------- extension of sign happen when the values are shifted
    mov rbx,0x80000000
    xor rdx,rdx
    add rdx,0x80000000 ; over here the sign extension happens
    ; --------------- setting the last byte
    mov r10,0x1020304050607000
    mov r10b,0x1020304050607010 ; only the last 8 bits are take into the r10b register which changes the last 8 bits of r10 register
    ; --------------- push pop | observer rsp and rbp while doing the operations
    mov rax,0x1111111111111111
    push rax
    pop rbx
    ; -------- memory operands need 64 bit registers
    jmp r10
    ; jmp r10d won't work

    
    ret