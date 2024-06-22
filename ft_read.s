extern __errno_location

global ft_read

section .text

ft_read:
	xor rax, rax
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
	mov r8, -1
	cmp rax, r8
	cmovl rax, r8
	ret
