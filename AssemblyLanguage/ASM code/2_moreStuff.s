%include "io64.inc"

; we can also define constants
; they are not variables they are like macros they cannot be modified, and the don't need to be derefrenced
; The advantage of using them is that:
; - they are better for expresing the intent
; - modification has to be done at just one place:w
BufferSize equ 40

section .data
_byte db 10
_word dw 20
_double dd 30
_quad dq 40


section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    mov rax,_byte ; this will transfer the address of _byte variable to the rax register
    movzx rax,word [_word] ; this will transfer the value of _word to the rax register;    
    ; movzx is required because _word is of 16 bits and rax of 64-bits so in order to transfer we need to append zeroes
    mov rax,qword [_quad] ; do i need to say more
    xor rax,rax
    ret