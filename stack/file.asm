%include "stud_io.inc"

global _start

section .data
    msg db "Never odd or even", 10, 0;
    msglen equ $-msg;

section .text
_start:
    
    xor ecx, ecx
    xor eax, eax
loop:
    mov ax, [msg+ecx];
    PUTCHAR al;
    push ax;
    inc ecx;
    cmp ecx, msglen;
    jl loop;

    pop ax;
    dec ecx;
endToStart:
    pop ax;
    PUTCHAR al;
    loop endToStart;
    PUTCHAR 10;
    FINISH
    
