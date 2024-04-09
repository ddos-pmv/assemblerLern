%include "stud_io.inc"
global _start
section .data
	OTVET dd 0;
	DIGIT dd 0;

section .text
_start: 
	xor eax,eax;
	mov eax, 331418;
	sub eax,330000;
	
	
	mov ecx, 9;
	xor edx,edx;
	div ecx;
	
	add eax,120;
	
	mov ebx,7;
	mul ebx;
	mov [OTVET], eax;
	
	mov eax, edx;
	mov ebx,7
	mul ebx;
	mov [DIGIT],eax;
	
	
	
	
	mov eax,[OTVET];
	
	
number_to_string_and_print:
	
	mov ecx, 10;
	xor edx,edx;
	div ecx;
	xor bl, bl;
	mov bl, dl;
	add bl, '0';
	PUTCHAR bl;
	cmp eax,0;
	jg number_to_string_and_print
	
	FINISH

