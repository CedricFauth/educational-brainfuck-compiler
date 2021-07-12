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
	PUTCHAR
	PUTCHAR
	PUTCHAR
	PUTCHAR
	PUTCHAR
	jmp L001
E001:
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	add rbx, 4
L002:	cmp DWORD [rbx], 0
	je E002
	dec DWORD [rbx]
	jmp L002
E002:
	sub rbx, 4
L003:	cmp DWORD [rbx], 0
	je E003
	dec DWORD [rbx]
	jmp L003
E003:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L004:	cmp DWORD [rbx], 0
	je E004
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	jmp L004
E004:
	add rbx, 4
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
L005:	cmp DWORD [rbx], 0
	je E005
	dec DWORD [rbx]
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	jmp L005
E005:
	sub rbx, 4
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	add rbx, 4
	sub rbx, 4
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
L006:	cmp DWORD [rbx], 0
	je E006
	dec DWORD [rbx]
	jmp L006
E006:
L007:	cmp DWORD [rbx], 0
	je E007
L008:	cmp DWORD [rbx], 0
	je E008
	dec DWORD [rbx]
	jmp L008
E008:
	add rbx, 4
L009:	cmp DWORD [rbx], 0
	je E009
	dec DWORD [rbx]
	jmp L009
E009:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L010:	cmp DWORD [rbx], 0
	je E010
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L010
E010:
	sub rbx, 4
	inc DWORD [rbx]
	PUTCHAR
	PUTCHAR
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L011:	cmp DWORD [rbx], 0
	je E011
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L011
E011:
	sub rbx, 4
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L012:	cmp DWORD [rbx], 0
	je E012
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L012
E012:
	sub rbx, 4
	PUTCHAR
	dec DWORD [rbx]
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L013:	cmp DWORD [rbx], 0
	je E013
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L013
E013:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L014:	cmp DWORD [rbx], 0
	je E014
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L014
E014:
	sub rbx, 4
	PUTCHAR
	PUTCHAR
L015:	cmp DWORD [rbx], 0
	je E015
	dec DWORD [rbx]
	jmp L015
E015:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
L016:	cmp DWORD [rbx], 0
	je E016
	dec DWORD [rbx]
	jmp L016
E016:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L017:	cmp DWORD [rbx], 0
	je E017
	PUTCHAR
	READCHAR
	jmp L017
E017:
	dec DWORD [rbx]
	jmp L007
E007:
	sub rbx, 4
	sub rbx, 4
	dec DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L018:	cmp DWORD [rbx], 0
	je E018
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L018
E018:
	add rbx, 4
L019:	cmp DWORD [rbx], 0
	je E019
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L019
E019:
	inc DWORD [rbx]
	sub rbx, 4
L020:	cmp DWORD [rbx], 0
	je E020
	add rbx, 4
	dec DWORD [rbx]
	sub rbx, 4
L021:	cmp DWORD [rbx], 0
	je E021
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L021
E021:
	add rbx, 4
L022:	cmp DWORD [rbx], 0
	je E022
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L022
E022:
	sub rbx, 4
L023:	cmp DWORD [rbx], 0
	je E023
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L023
E023:
	inc DWORD [rbx]
	add rbx, 4
L024:	cmp DWORD [rbx], 0
	je E024
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
L025:	cmp DWORD [rbx], 0
	je E025
	sub rbx, 4
	jmp L025
E025:
	add rbx, 4
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
L026:	cmp DWORD [rbx], 0
	je E026
	dec DWORD [rbx]
	jmp L026
E026:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L027:	cmp DWORD [rbx], 0
	je E027
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L027
E027:
	sub rbx, 4
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L028:	cmp DWORD [rbx], 0
	je E028
	dec DWORD [rbx]
	jmp L028
E028:
	sub rbx, 4
L029:	cmp DWORD [rbx], 0
	je E029
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
L030:	cmp DWORD [rbx], 0
	je E030
	dec DWORD [rbx]
	jmp L030
E030:
	jmp L029
E029:
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
L031:	cmp DWORD [rbx], 0
	je E031
	dec DWORD [rbx]
	jmp L031
E031:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L032:	cmp DWORD [rbx], 0
	je E032
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L032
E032:
	sub rbx, 4
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L033:	cmp DWORD [rbx], 0
	je E033
	dec DWORD [rbx]
	jmp L033
E033:
	sub rbx, 4
L034:	cmp DWORD [rbx], 0
	je E034
	dec DWORD [rbx]
	jmp L034
E034:
	sub rbx, 4
L035:	cmp DWORD [rbx], 0
	je E035
	dec DWORD [rbx]
	jmp L035
E035:
	add rbx, 4
	jmp L024
E024:
	sub rbx, 4
L036:	cmp DWORD [rbx], 0
	je E036
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
L037:	cmp DWORD [rbx], 0
	je E037
	dec DWORD [rbx]
	jmp L037
E037:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L038:	cmp DWORD [rbx], 0
	je E038
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L038
E038:
	sub rbx, 4
	PUTCHAR
L039:	cmp DWORD [rbx], 0
	je E039
	dec DWORD [rbx]
	jmp L039
E039:
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L040:	cmp DWORD [rbx], 0
	je E040
	dec DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
L041:	cmp DWORD [rbx], 0
	je E041
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	jmp L041
E041:
	add rbx, 4
L042:	cmp DWORD [rbx], 0
	je E042
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	jmp L042
E042:
	add rbx, 4
	jmp L040
E040:
	sub rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
L043:	cmp DWORD [rbx], 0
	je E043
	add rbx, 4
	add rbx, 4
	add rbx, 4
L044:	cmp DWORD [rbx], 0
	je E044
	dec DWORD [rbx]
	jmp L044
E044:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L045:	cmp DWORD [rbx], 0
	je E045
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L045
E045:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L046:	cmp DWORD [rbx], 0
	je E046
	dec DWORD [rbx]
	jmp L046
E046:
	sub rbx, 4
L047:	cmp DWORD [rbx], 0
	je E047
	dec DWORD [rbx]
	jmp L047
E047:
	sub rbx, 4
L048:	cmp DWORD [rbx], 0
	je E048
	dec DWORD [rbx]
	jmp L048
E048:
	jmp L043
E043:
	add rbx, 4
L049:	cmp DWORD [rbx], 0
	je E049
	add rbx, 4
	add rbx, 4
L050:	cmp DWORD [rbx], 0
	je E050
	dec DWORD [rbx]
	jmp L050
E050:
	add rbx, 4
L051:	cmp DWORD [rbx], 0
	je E051
	dec DWORD [rbx]
	jmp L051
E051:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L052:	cmp DWORD [rbx], 0
	je E052
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L052
E052:
	sub rbx, 4
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L053:	cmp DWORD [rbx], 0
	je E053
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L053
E053:
	sub rbx, 4
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L054:	cmp DWORD [rbx], 0
	je E054
	dec DWORD [rbx]
	jmp L054
E054:
	sub rbx, 4
	sub rbx, 4
L055:	cmp DWORD [rbx], 0
	je E055
	dec DWORD [rbx]
	jmp L055
E055:
	jmp L049
E049:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
L056:	cmp DWORD [rbx], 0
	je E056
	dec DWORD [rbx]
	jmp L056
E056:
	jmp L036
E036:
	add rbx, 4
L057:	cmp DWORD [rbx], 0
	je E057
	dec DWORD [rbx]
	jmp L057
E057:
	sub rbx, 4
	jmp L020
E020:
	add rbx, 4
L058:	cmp DWORD [rbx], 0
	je E058
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L059:	cmp DWORD [rbx], 0
	je E059
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L059
E059:
	add rbx, 4
L060:	cmp DWORD [rbx], 0
	je E060
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L060
E060:
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
L061:	cmp DWORD [rbx], 0
	je E061
L062:	cmp DWORD [rbx], 0
	je E062
	dec DWORD [rbx]
	jmp L062
E062:
	add rbx, 4
L063:	cmp DWORD [rbx], 0
	je E063
	dec DWORD [rbx]
	jmp L063
E063:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L064:	cmp DWORD [rbx], 0
	je E064
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L064
E064:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L065:	cmp DWORD [rbx], 0
	je E065
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L065
E065:
	sub rbx, 4
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L066:	cmp DWORD [rbx], 0
	je E066
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L066
E066:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L067:	cmp DWORD [rbx], 0
	je E067
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L067
E067:
	sub rbx, 4
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	PUTCHAR
L068:	cmp DWORD [rbx], 0
	je E068
	dec DWORD [rbx]
	jmp L068
E068:
	jmp L061
E061:
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
L069:	cmp DWORD [rbx], 0
	je E069
	dec DWORD [rbx]
	jmp L069
E069:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L070:	cmp DWORD [rbx], 0
	je E070
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L070
E070:
	sub rbx, 4
	PUTCHAR
L071:	cmp DWORD [rbx], 0
	je E071
	dec DWORD [rbx]
	jmp L071
E071:
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
L072:	cmp DWORD [rbx], 0
	je E072
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L072
E072:
	add rbx, 4
L073:	cmp DWORD [rbx], 0
	je E073
	sub rbx, 4
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
L074:	cmp DWORD [rbx], 0
	je E074
	dec DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
L075:	cmp DWORD [rbx], 0
	je E075
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L075
E075:
	add rbx, 4
L076:	cmp DWORD [rbx], 0
	je E076
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L076
E076:
	add rbx, 4
	jmp L074
E074:
	jmp L073
E073:
	sub rbx, 4
	sub rbx, 4
L077:	cmp DWORD [rbx], 0
	je E077
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L078:	cmp DWORD [rbx], 0
	je E078
	add rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	jmp L078
E078:
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
L079:	cmp DWORD [rbx], 0
	je E079
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	jmp L079
E079:
	sub rbx, 4
	PUTCHAR
L080:	cmp DWORD [rbx], 0
	je E080
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	jmp L080
E080:
	add rbx, 4
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
L081:	cmp DWORD [rbx], 0
	je E081
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	jmp L081
E081:
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L082:	cmp DWORD [rbx], 0
	je E082
	dec DWORD [rbx]
	jmp L082
E082:
	sub rbx, 4
L083:	cmp DWORD [rbx], 0
	je E083
	dec DWORD [rbx]
	jmp L083
E083:
	jmp L077
E077:
L084:	cmp DWORD [rbx], 0
	je E084
	dec DWORD [rbx]
	jmp L084
E084:
	add rbx, 4
L085:	cmp DWORD [rbx], 0
	je E085
	dec DWORD [rbx]
	jmp L085
E085:
	add rbx, 4
L086:	cmp DWORD [rbx], 0
	je E086
	dec DWORD [rbx]
	jmp L086
E086:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
L087:	cmp DWORD [rbx], 0
	je E087
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L087
E087:
	add rbx, 4
L088:	cmp DWORD [rbx], 0
	je E088
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L088
E088:
	sub rbx, 4
L089:	cmp DWORD [rbx], 0
	je E089
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L089
E089:
	add rbx, 4
L090:	cmp DWORD [rbx], 0
	je E090
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L090
E090:
	sub rbx, 4
L091:	cmp DWORD [rbx], 0
	je E091
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L091
E091:
	sub rbx, 4
L092:	cmp DWORD [rbx], 0
	je E092
L093:	cmp DWORD [rbx], 0
	je E093
	dec DWORD [rbx]
	jmp L093
E093:
	add rbx, 4
L094:	cmp DWORD [rbx], 0
	je E094
	dec DWORD [rbx]
	jmp L094
E094:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L095:	cmp DWORD [rbx], 0
	je E095
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L095
E095:
	sub rbx, 4
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L096:	cmp DWORD [rbx], 0
	je E096
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L096
E096:
	sub rbx, 4
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	add rbx, 4
	add rbx, 4
L097:	cmp DWORD [rbx], 0
	je E097
	dec DWORD [rbx]
	jmp L097
E097:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L098:	cmp DWORD [rbx], 0
	je E098
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L098
E098:
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	sub rbx, 4
	sub rbx, 4
L099:	cmp DWORD [rbx], 0
	je E099
	dec DWORD [rbx]
	jmp L099
E099:
	jmp L092
E092:
L100:	cmp DWORD [rbx], 0
	je E100
	dec DWORD [rbx]
	jmp L100
E100:
	sub rbx, 4
L101:	cmp DWORD [rbx], 0
	je E101
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
L102:	cmp DWORD [rbx], 0
	je E102
	dec DWORD [rbx]
	jmp L102
E102:
	jmp L101
E101:
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
L103:	cmp DWORD [rbx], 0
	je E103
	dec DWORD [rbx]
	jmp L103
E103:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L104:	cmp DWORD [rbx], 0
	je E104
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L104
E104:
	sub rbx, 4
	PUTCHAR
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L105:	cmp DWORD [rbx], 0
	je E105
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L105
E105:
	sub rbx, 4
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L106:	cmp DWORD [rbx], 0
	je E106
	dec DWORD [rbx]
	jmp L106
E106:
	sub rbx, 4
L107:	cmp DWORD [rbx], 0
	je E107
	dec DWORD [rbx]
	jmp L107
E107:
	jmp L058
E058:
	sub rbx, 4
	inc DWORD [rbx]
L108:	cmp DWORD [rbx], 0
	je E108
L109:	cmp DWORD [rbx], 0
	je E109
	add rbx, 4
	jmp L109
E109:
	sub rbx, 4
	dec DWORD [rbx]
	jmp L108
E108:
	add rbx, 4
	add rbx, 4
L110:	cmp DWORD [rbx], 0
	je E110
	sub rbx, 4
L111:	cmp DWORD [rbx], 0
	je E111
L112:	cmp DWORD [rbx], 0
	je E112
	sub rbx, 4
L113:	cmp DWORD [rbx], 0
	je E113
L114:	cmp DWORD [rbx], 0
	je E114
	sub rbx, 4
L115:	cmp DWORD [rbx], 0
	je E115
L116:	cmp DWORD [rbx], 0
	je E116
	sub rbx, 4
L117:	cmp DWORD [rbx], 0
	je E117
	READCHAR
	jmp L117
E117:
	jmp L116
E116:
	jmp L115
E115:
	sub rbx, 4
	jmp L114
E114:
	sub rbx, 4
	jmp L113
E113:
	sub rbx, 4
	jmp L112
E112:
	sub rbx, 4
	jmp L111
E111:
L118:	cmp DWORD [rbx], 0
	je E118
	dec DWORD [rbx]
	jmp L118
E118:
	jmp L110
E110:
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	dec DWORD [rbx]
L119:	cmp DWORD [rbx], 0
	je E119
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L119
E119:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L120:	cmp DWORD [rbx], 0
	je E120
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	jmp L120
E120:
	add rbx, 4
L121:	cmp DWORD [rbx], 0
	je E121
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	jmp L121
E121:
	sub rbx, 4
L122:	cmp DWORD [rbx], 0
	je E122
	dec DWORD [rbx]
	add rbx, 4
	add rbx, 4
L123:	cmp DWORD [rbx], 0
	je E123
	add rbx, 4
	jmp L123
E123:
	inc DWORD [rbx]
L124:	cmp DWORD [rbx], 0
	je E124
	sub rbx, 4
	jmp L124
E124:
	sub rbx, 4
	jmp L122
E122:
	add rbx, 4
	add rbx, 4
L125:	cmp DWORD [rbx], 0
	je E125
	dec DWORD [rbx]
	add rbx, 4
	jmp L125
E125:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
L126:	cmp DWORD [rbx], 0
	je E126
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	inc DWORD [rbx]
	jmp L126
E126:
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
L127:	cmp DWORD [rbx], 0
	je E127
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	jmp L127
E127:
	dec DWORD [rbx]
L128:	cmp DWORD [rbx], 0
	je E128
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L128
E128:
	inc DWORD [rbx]
L129:	cmp DWORD [rbx], 0
	je E129
	add rbx, 4
	jmp L129
E129:
	sub rbx, 4
	dec DWORD [rbx]
L130:	cmp DWORD [rbx], 0
	je E130
	dec DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	jmp L130
E130:
L131:	cmp DWORD [rbx], 0
	je E131
	PUTCHAR
	PUTCHAR
	jmp L131
E131:
L132:	cmp DWORD [rbx], 0
	je E132
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L133:	cmp DWORD [rbx], 0
	je E133
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L133
E133:
	sub rbx, 4
	inc DWORD [rbx]
L134:	cmp DWORD [rbx], 0
	je E134
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L134
E134:
	add rbx, 4
	inc DWORD [rbx]
L135:	cmp DWORD [rbx], 0
	je E135
L136:	cmp DWORD [rbx], 0
	je E136
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	jmp L136
E136:
	add rbx, 4
	add rbx, 4
L137:	cmp DWORD [rbx], 0
	je E137
	dec DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	jmp L137
E137:
	sub rbx, 4
L138:	cmp DWORD [rbx], 0
	je E138
	sub rbx, 4
L139:	cmp DWORD [rbx], 0
	je E139
	dec DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	jmp L139
E139:
	inc DWORD [rbx]
	add rbx, 4
L140:	cmp DWORD [rbx], 0
	je E140
	dec DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	jmp L140
E140:
	inc DWORD [rbx]
L141:	cmp DWORD [rbx], 0
	je E141
	add rbx, 4
	jmp L141
E141:
	sub rbx, 4
	dec DWORD [rbx]
	jmp L138
E138:
	sub rbx, 4
	dec DWORD [rbx]
	jmp L135
E135:
	sub rbx, 4
L142:	cmp DWORD [rbx], 0
	je E142
	dec DWORD [rbx]
	sub rbx, 4
	jmp L142
E142:
	jmp L132
E132:
	add rbx, 4
	inc DWORD [rbx]
L143:	cmp DWORD [rbx], 0
	je E143
	add rbx, 4
L144:	cmp DWORD [rbx], 0
	je E144
L145:	cmp DWORD [rbx], 0
	je E145
	dec DWORD [rbx]
	jmp L145
E145:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
L146:	cmp DWORD [rbx], 0
	je E146
	dec DWORD [rbx]
	jmp L146
E146:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	dec DWORD [rbx]
L147:	cmp DWORD [rbx], 0
	je E147
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L147
E147:
	sub rbx, 4
	PUTCHAR
	sub rbx, 4
L148:	cmp DWORD [rbx], 0
	je E148
	dec DWORD [rbx]
	jmp L148
E148:
	add rbx, 4
L149:	cmp DWORD [rbx], 0
	je E149
	dec DWORD [rbx]
	jmp L149
E149:
	jmp L144
E144:
	inc DWORD [rbx]
	sub rbx, 4
	jmp L143
E143:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L150:	cmp DWORD [rbx], 0
	je E150
L151:	cmp DWORD [rbx], 0
	je E151
	add rbx, 4
	jmp L151
E151:
	inc DWORD [rbx]
L152:	cmp DWORD [rbx], 0
	je E152
	sub rbx, 4
	jmp L152
E152:
	add rbx, 4
	dec DWORD [rbx]
	jmp L150
E150:
	add rbx, 4
L153:	cmp DWORD [rbx], 0
	je E153
	add rbx, 4
	jmp L153
E153:
	sub rbx, 4
L154:	cmp DWORD [rbx], 0
	je E154
L155:	cmp DWORD [rbx], 0
	je E155
	dec DWORD [rbx]
	jmp L155
E155:
	sub rbx, 4
	jmp L154
E154:
	inc DWORD [rbx]
L156:	cmp DWORD [rbx], 0
	je E156
L157:	cmp DWORD [rbx], 0
	je E157
	add rbx, 4
	jmp L157
E157:
	sub rbx, 4
	dec DWORD [rbx]
L158:	cmp DWORD [rbx], 0
	je E158
	READCHAR
	jmp L158
E158:
	inc DWORD [rbx]
L159:	cmp DWORD [rbx], 0
	je E159
	add rbx, 4
	jmp L159
E159:
	sub rbx, 4
	dec DWORD [rbx]
L160:	cmp DWORD [rbx], 0
	je E160
	jmp L160
E160:
	jmp L156
E156:
L161:	cmp DWORD [rbx], 0
	je E161
	dec DWORD [rbx]
	jmp L161
E161:
	add rbx, 4
L162:	cmp DWORD [rbx], 0
	je E162
	dec DWORD [rbx]
	jmp L162
E162:
	add rbx, 4
L163:	cmp DWORD [rbx], 0
	je E163
	dec DWORD [rbx]
	jmp L163
E163:
	add rbx, 4
L164:	cmp DWORD [rbx], 0
	je E164
	dec DWORD [rbx]
	jmp L164
E164:
	add rbx, 4
L165:	cmp DWORD [rbx], 0
	je E165
	dec DWORD [rbx]
	jmp L165
E165:
	add rbx, 4
L166:	cmp DWORD [rbx], 0
	je E166
	dec DWORD [rbx]
	jmp L166
E166:
	add rbx, 4
L167:	cmp DWORD [rbx], 0
	je E167
	dec DWORD [rbx]
	jmp L167
E167:
	add rbx, 4
L168:	cmp DWORD [rbx], 0
	je E168
	dec DWORD [rbx]
	jmp L168
E168:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L169:	cmp DWORD [rbx], 0
	je E169
	dec DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	jmp L169
E169:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
L170:	cmp DWORD [rbx], 0
	je E170
	dec DWORD [rbx]
	add rbx, 4
	add rbx, 4
L171:	cmp DWORD [rbx], 0
	je E171
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L172:	cmp DWORD [rbx], 0
	je E172
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L173:	cmp DWORD [rbx], 0
	je E173
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
L174:	cmp DWORD [rbx], 0
	je E174
	add rbx, 4
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	jmp L174
E174:
	add rbx, 4
	add rbx, 4
L175:	cmp DWORD [rbx], 0
	je E175
	dec DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	jmp L175
E175:
	sub rbx, 4
	dec DWORD [rbx]
L176:	cmp DWORD [rbx], 0
	je E176
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
L177:	cmp DWORD [rbx], 0
	je E177
	dec DWORD [rbx]
	jmp L177
E177:
	sub rbx, 4
	sub rbx, 4
L178:	cmp DWORD [rbx], 0
	je E178
	dec DWORD [rbx]
	jmp L178
E178:
	sub rbx, 4
	sub rbx, 4
L179:	cmp DWORD [rbx], 0
	je E179
	dec DWORD [rbx]
	jmp L179
E179:
	sub rbx, 4
	sub rbx, 4
L180:	cmp DWORD [rbx], 0
	je E180
	dec DWORD [rbx]
	jmp L180
E180:
	add rbx, 4
	add rbx, 4
	add rbx, 4
L181:	cmp DWORD [rbx], 0
	je E181
	dec DWORD [rbx]
	jmp L181
E181:
	add rbx, 4
	add rbx, 4
L182:	cmp DWORD [rbx], 0
	je E182
	dec DWORD [rbx]
	jmp L182
E182:
	add rbx, 4
	add rbx, 4
L183:	cmp DWORD [rbx], 0
	je E183
	dec DWORD [rbx]
	jmp L183
E183:
	add rbx, 4
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	jmp L176
E176:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	jmp L173
E173:
	add rbx, 4
L184:	cmp DWORD [rbx], 0
	je E184
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	jmp L184
E184:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	jmp L172
E172:
	add rbx, 4
L185:	cmp DWORD [rbx], 0
	je E185
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	jmp L185
E185:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	jmp L171
E171:
	add rbx, 4
L186:	cmp DWORD [rbx], 0
	je E186
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	jmp L186
E186:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	jmp L170
E170:
	add rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L187:	cmp DWORD [rbx], 0
	je E187
L188:	cmp DWORD [rbx], 0
	je E188
	dec DWORD [rbx]
	jmp L188
E188:
	sub rbx, 4
	dec DWORD [rbx]
	add rbx, 4
	jmp L187
E187:
	sub rbx, 4
L189:	cmp DWORD [rbx], 0
	je E189
	dec DWORD [rbx]
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
L190:	cmp DWORD [rbx], 0
	je E190
	dec DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	add rbx, 4
	jmp L190
E190:
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	sub rbx, 4
	jmp L189
E189:
	sub rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
L191:	cmp DWORD [rbx], 0
	je E191
	add rbx, 4
L192:	cmp DWORD [rbx], 0
	je E192
	dec DWORD [rbx]
	jmp L192
E192:
	add rbx, 4
L193:	cmp DWORD [rbx], 0
	je E193
	dec DWORD [rbx]
	jmp L193
E193:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L194:	cmp DWORD [rbx], 0
	je E194
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L194
E194:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
L195:	cmp DWORD [rbx], 0
	je E195
	dec DWORD [rbx]
	jmp L195
E195:
	sub rbx, 4
L196:	cmp DWORD [rbx], 0
	je E196
L197:	cmp DWORD [rbx], 0
	je E197
	dec DWORD [rbx]
	add rbx, 4
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
	sub rbx, 4
	jmp L197
E197:
	add rbx, 4
	add rbx, 4
L198:	cmp DWORD [rbx], 0
	je E198
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
L199:	cmp DWORD [rbx], 0
	je E199
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L200:	cmp DWORD [rbx], 0
	je E200
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L201:	cmp DWORD [rbx], 0
	je E201
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L202:	cmp DWORD [rbx], 0
	je E202
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L203:	cmp DWORD [rbx], 0
	je E203
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L204:	cmp DWORD [rbx], 0
	je E204
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L205:	cmp DWORD [rbx], 0
	je E205
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L206:	cmp DWORD [rbx], 0
	je E206
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	add rbx, 4
L207:	cmp DWORD [rbx], 0
	je E207
	sub rbx, 4
L208:	cmp DWORD [rbx], 0
	je E208
	dec DWORD [rbx]
	jmp L208
E208:
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
L209:	cmp DWORD [rbx], 0
	je E209
	sub rbx, 4
	dec DWORD [rbx]
	jmp L209
E209:
	jmp L207
E207:
	jmp L206
E206:
	jmp L205
E205:
	jmp L204
E204:
	jmp L203
E203:
	jmp L202
E202:
	jmp L201
E201:
	jmp L200
E200:
	jmp L199
E199:
	add rbx, 4
	jmp L198
E198:
	sub rbx, 4
	sub rbx, 4
L210:	cmp DWORD [rbx], 0
	je E210
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L211:	cmp DWORD [rbx], 0
	je E211
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L211
E211:
	sub rbx, 4
	dec DWORD [rbx]
	PUTCHAR
L212:	cmp DWORD [rbx], 0
	je E212
	dec DWORD [rbx]
	jmp L212
E212:
	sub rbx, 4
	jmp L210
E210:
	jmp L196
E196:
	jmp L191
E191:
	add rbx, 4
L213:	cmp DWORD [rbx], 0
	je E213
	add rbx, 4
L214:	cmp DWORD [rbx], 0
	je E214
	dec DWORD [rbx]
	jmp L214
E214:
	add rbx, 4
L215:	cmp DWORD [rbx], 0
	je E215
	dec DWORD [rbx]
	jmp L215
E215:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L216:	cmp DWORD [rbx], 0
	je E216
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L216
E216:
	sub rbx, 4
L217:	cmp DWORD [rbx], 0
	je E217
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L217
E217:
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L218:	cmp DWORD [rbx], 0
	je E218
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L218
E218:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L219:	cmp DWORD [rbx], 0
	je E219
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L219
E219:
	sub rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
L220:	cmp DWORD [rbx], 0
	je E220
L221:	cmp DWORD [rbx], 0
	je E221
	dec DWORD [rbx]
	jmp L221
E221:
	add rbx, 4
	dec DWORD [rbx]
	sub rbx, 4
	jmp L220
E220:
	add rbx, 4
L222:	cmp DWORD [rbx], 0
	je E222
	add rbx, 4
L223:	cmp DWORD [rbx], 0
	je E223
	dec DWORD [rbx]
	jmp L223
E223:
	sub rbx, 4
L224:	cmp DWORD [rbx], 0
	je E224
	dec DWORD [rbx]
	jmp L224
E224:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L225:	cmp DWORD [rbx], 0
	je E225
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	jmp L225
E225:
	add rbx, 4
	PUTCHAR
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L226:	cmp DWORD [rbx], 0
	je E226
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	jmp L226
E226:
	sub rbx, 4
	PUTCHAR
L227:	cmp DWORD [rbx], 0
	je E227
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	jmp L227
E227:
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L228:	cmp DWORD [rbx], 0
	je E228
	add rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L228
E228:
	add rbx, 4
	PUTCHAR
L229:	cmp DWORD [rbx], 0
	je E229
	dec DWORD [rbx]
	jmp L229
E229:
	sub rbx, 4
	jmp L222
E222:
	sub rbx, 4
L230:	cmp DWORD [rbx], 0
	je E230
	dec DWORD [rbx]
	jmp L230
E230:
	add rbx, 4
L231:	cmp DWORD [rbx], 0
	je E231
	dec DWORD [rbx]
	jmp L231
E231:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L232:	cmp DWORD [rbx], 0
	je E232
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	dec DWORD [rbx]
	jmp L232
E232:
	sub rbx, 4
L233:	cmp DWORD [rbx], 0
	je E233
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	dec DWORD [rbx]
	jmp L233
E233:
	inc DWORD [rbx]
	add rbx, 4
L234:	cmp DWORD [rbx], 0
	je E234
	sub rbx, 4
	dec DWORD [rbx]
	add rbx, 4
L235:	cmp DWORD [rbx], 0
	je E235
	dec DWORD [rbx]
	jmp L235
E235:
	jmp L234
E234:
	sub rbx, 4
L236:	cmp DWORD [rbx], 0
	je E236
	add rbx, 4
L237:	cmp DWORD [rbx], 0
	je E237
	dec DWORD [rbx]
	jmp L237
E237:
	sub rbx, 4
L238:	cmp DWORD [rbx], 0
	je E238
	dec DWORD [rbx]
	jmp L238
E238:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L239:	cmp DWORD [rbx], 0
	je E239
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	sub rbx, 4
	jmp L239
E239:
	add rbx, 4
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
L240:	cmp DWORD [rbx], 0
	je E240
	dec DWORD [rbx]
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	add rbx, 4
	jmp L240
E240:
	sub rbx, 4
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L241:	cmp DWORD [rbx], 0
	je E241
	dec DWORD [rbx]
	dec DWORD [rbx]
	add rbx, 4
	inc DWORD [rbx]
	sub rbx, 4
	jmp L241
E241:
	add rbx, 4
	dec DWORD [rbx]
	dec DWORD [rbx]
	PUTCHAR
L242:	cmp DWORD [rbx], 0
	je E242
	dec DWORD [rbx]
	jmp L242
E242:
	sub rbx, 4
	jmp L236
E236:
	jmp L213
E213:
	sub rbx, 4
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
L243:	cmp DWORD [rbx], 0
	je E243
L244:	cmp DWORD [rbx], 0
	je E244
	add rbx, 4
	jmp L244
E244:
	inc DWORD [rbx]
L245:	cmp DWORD [rbx], 0
	je E245
	sub rbx, 4
	jmp L245
E245:
	add rbx, 4
	dec DWORD [rbx]
	jmp L243
E243:
	add rbx, 4
L246:	cmp DWORD [rbx], 0
	je E246
	add rbx, 4
	jmp L246
E246:
	sub rbx, 4
L247:	cmp DWORD [rbx], 0
	je E247
L248:	cmp DWORD [rbx], 0
	je E248
	dec DWORD [rbx]
	jmp L248
E248:
	sub rbx, 4
	jmp L247
E247:
L249:	cmp DWORD [rbx], 0
	je E249
	dec DWORD [rbx]
	jmp L249
E249:
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	inc DWORD [rbx]
	PUTCHAR
L250:	cmp DWORD [rbx], 0
	je E250
	dec DWORD [rbx]
	jmp L250
E250:
L251:	cmp DWORD [rbx], 0
	je E251
	READCHAR
	READCHAR
	PUTCHAR
	jmp L251
E251:
	sub rbx, 4
	sub rbx, 4
	EXIT
