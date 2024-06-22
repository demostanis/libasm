extern __errno_location

global ft_write

section .text

ft_write:
	mov rax, 1
	syscall
	mov rbx, rax
	xor r8, r8
	cmp rax, r8
	cmovg rax, r8
	neg rax
	mov rcx, rax
	call __errno_location wrt ..plt
	mov [rax], rcx
	mov rax, rbx
	ret
