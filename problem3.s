	.intel_syntax noprefix
	.section .text
	.global _start

_start:
	mov rdi, 10
	call func
	mov rax, 60
	syscall

func:
	dec rdi
	je done
	call func

done:
	ret
