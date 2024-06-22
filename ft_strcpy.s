global ft_strcpy

section .text

ft_strcpy:
	mov r15, rax
	mov rax, rdi
_l1:
	mov al, [rsi]
	mov [rdi], al
	cmp byte [rsi], 0
	je _end
	inc rdi
	inc rsi
	jmp _l1
_end:
	mov rax, r15
	ret
