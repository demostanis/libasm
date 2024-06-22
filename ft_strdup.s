extern malloc
extern ft_strlen
extern ft_strcpy

global ft_strdup

section .text

ft_strdup:
	mov rbx, rdi
	call ft_strlen
	inc rax
	mov rdi, rax
	call malloc wrt ..plt
	cmp rax, 0
	je _end
	mov r15, rax
	mov rdi, rax
	mov rsi, rbx
	call ft_strcpy
	mov rax, r15
_end:
	ret
