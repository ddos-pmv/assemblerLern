%include "stud_io.inc"
global _start;


section .bss
    set512 resd 16;

section .text
_start:
    ;clear 'set512'
    xor eax, eax;
    mov ecx, 16;
    mov esi, set512;
lp: mov [esi+4*ecx-4], eax;
    loop lp;


    ;внести в множество set512 элемент,
    ;номер которого находится в EBX
    mov ebx, 500
    mov cl,bl
    and cl, 11111b
    mov eax, 1
    shl eax, cl
    not eax;
    mov edx, ebx
    shr edx, 5
    or [set512+4*edx],eax
   

    mov ecx, 16;
;print:
    ;PUTCHAR [set512+ecx*4-4]
    ;PUTCHAR 27;
    ;loop print;

