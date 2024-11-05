	.intel_syntax noprefix
	.section .text
	.global _start

_start:	

	mov rbp, 0x00007fffffffdd50
	mov rdi, 0x0000000000000013
	mov rsi, 0x4

func:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	mov QWORD PTR [rbp - 16], rdi
	mov QWORD PTR [rbp - 24], rsi
	mov rax, rdi
	sub rax, rsi
	mov QWORD PTR [rbp - 8], rax
	cmp QWORD PTR [rbp - 8], 0
	jge A
	mov rax, QWORD PTR [rbp - 16]
	jmp B

A:
	mov rdi, QWORD PTR [rbp - 8]
	call func

B:
	add rsp, 24
	mov rsp, rbp
	pop rbp
	ret
