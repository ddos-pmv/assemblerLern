%include "stud_io.inc"

global _start

section .data
    limit dd 4191;
section .bss
    array resd 127;

section .text
_start:
    mov eax, 0;
    mov ecx, 127;
fill_with_:
    mov [array+ecx*4 -4], byte 34
    loop fill_with_

    mov eax, 0;
    mov ecx, 127;
count_while_loe:
    add eax, [array + ecx*4-4];
    cmp eax, [limit];
    ja greater_than_limit;
    je equal_to_limit;
    loop count_while_loe;
    
less_than_limit:    
    PRINT "Сумма меньше";
    PUTCHAR 10;
    jmp exit_program
    
greater_than_limit:
    PRINT "Сумма больше";
    PUTCHAR 10;
    jmp exit_program;
equal_to_limit:
    PRINT "Сумма равна";
    PUTCHAR 10;
    jmp exit_program;
exit_program:
    FINISH
    
