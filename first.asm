%include "stud_io.inc"
global _start
section .bss
 array resb 16

section .text
_start: 
 mov eax,0
 mov bl, '0'
 mov ecx, 0
mov eax, array

zeroToNine:
	mov [eax],bl
	inc eax
	inc bl
	cmp bl, ':'
	jl zeroToNine
	mov bl, 'A'
AToF:
	mov [eax],bl
	inc bl
	inc eax
	cmp bl,'G'
	jl AToF

	mov ecx,0
Print:
	mov al, [array + ecx]
	PUTCHAR al
	inc ecx
	cmp ecx,16
	jl Print

FINISH
