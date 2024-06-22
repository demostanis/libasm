global ft_strcmp

section .text

ft_strcmp:
_l1:
	mov al, byte [rdi]
	mov bl, byte [rsi]
	cmp al, 0
	je _end
	cmp bl, 0
	je _end
	cmp al, bl
	jne _end
	inc rdi
	inc rsi
	jmp _l1
_end:
	movzx rax, al
	movzx rbx, bl
	sub rax, rbx
	ret
