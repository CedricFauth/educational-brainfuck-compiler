global _main
%define SIZE 30000
%macro READCHAR 0
	%%retry:
	mov rax, 0x2000003
	mov rdi, 0
	mov rsi, rbx
	mov rdx, 1
	syscall
	cmp BYTE [rbx], 0xA
	je %%retry
%endmacro
%macro PUTCHAR 0
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, rbx
	mov rdx, 1
	syscall
%endmacro
%macro EXIT 0
	mov rax, 0x2000001
	mov rdi, 0
	syscall
%endmacro
section .bss
	array: resd SIZE
section .data
section .text
	_main:
	mov rbx, array
L001:	cmp DWORD [rbx], 0
	je E001
	READCHAR
	PUTCHAR
L002:	cmp DWORD [rbx], 0
	je E002
	PUTCHAR
	jmp L002
E002:
	READCHAR
	PUTCHAR
	PUTCHAR
	READCHAR
	READCHAR
	READCHAR
	inc DWORD [rbx]
	READCHAR
	dec DWORD [rbx]
	READCHAR
	sub rbx, 4
	add rbx, 4
	READCHAR
L003:	cmp DWORD [rbx], 0
	je E003
	jmp L003
E003:
	PUTCHAR
	PUTCHAR
	jmp L001
E001:
	add DWORD [rbx], 8
L004:	cmp DWORD [rbx], 0
	je E004
	add rbx, 4
	add DWORD [rbx], 4
L005:	cmp DWORD [rbx], 0
	je E005
	add rbx, 4
	add DWORD [rbx], 2
	add rbx, 4
	add DWORD [rbx], 3
	add rbx, 4
	add DWORD [rbx], 3
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4*4
	dec DWORD [rbx]
	jmp L005
E005:
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	add rbx, 4*2
	inc DWORD [rbx]
L006:	cmp DWORD [rbx], 0
	je E006
	sub rbx, 4
	jmp L006
E006:
	sub rbx, 4
	dec DWORD [rbx]
	jmp L004
E004:
	add rbx, 4*2
	PUTCHAR
	add rbx, 4
	sub DWORD [rbx], 3
	PUTCHAR
	add DWORD [rbx], 7
	PUTCHAR
	PUTCHAR
	add DWORD [rbx], 3
	PUTCHAR
	add rbx, 4*2
	PUTCHAR
	sub rbx, 4
	dec DWORD [rbx]
	PUTCHAR
	sub rbx, 4
	PUTCHAR
	add DWORD [rbx], 3
	PUTCHAR
	sub DWORD [rbx], 6
	PUTCHAR
	sub DWORD [rbx], 8
	PUTCHAR
	add rbx, 4*2
	inc DWORD [rbx]
	PUTCHAR
	add rbx, 4
	add DWORD [rbx], 2
	PUTCHAR
	EXIT
