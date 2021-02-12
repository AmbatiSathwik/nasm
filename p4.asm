section .data

msg : db 'Enter a number',10
l1 : equ $-msg

section .bss

num1 : resb 1
l1 : resb 1

num2 : resb 1
l2 : resb 1

section .text

global _start:
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, l
	int 80h
	
	mov eax, 3
	mov ebx, 0
	mov ecx, num1
	mov edx, l1
	int 80h
	
	
