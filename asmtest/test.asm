; nasm -f macho64 test.asm -o test.o  && ld -macosx_version_min 10.13 -arch x86_64 -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o test test.o -no_pie

global _main

%define SIZE 3

%macro READCHAR 0
    %%retry:
    mov     rax, 0x2000003
    mov     rdi, 0
    mov     rsi, rbx
    mov     rdx, 1
    syscall
    cmp BYTE [rbx], 0xA     ; '\n'
    je %%retry
%endmacro

%macro PUTCHAR 0
    mov     rax, 0x2000004  ; write
    mov     rdi, 1          ; stdout
    mov     rsi, rbx
    mov     rdx, 1          ; len
    syscall
%endmacro

%macro EXIT 0
    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall
%endmacro


section .bss
array:      resd SIZE  ; int array[2]

section .data

section .text
_main:
    mov     rbx, array
; !end head
    mov     DWORD [rbx], 4
    add     rbx, 4
    mov     DWORD [rbx], 'A'

    ;add     rbx, 4
    ;READCHAR
    ;sub     rbx, 8
    ;mov     rbx, array
    mov     rbx, array

; head
L0:
    cmp     DWORD [rbx], 0
    je E0
; !head
    add rbx, 4
    PUTCHAR
    sub rbx, 4
    dec     DWORD [rbx]
; end
    jmp L0
E0:
; !end

    ;mov     rbx, array
    ;PUTCHAR
    ;add     rbx, 4
    ;PUTCHAR
    ;add     rbx, 4
    ;PUTCHAR
    EXIT
