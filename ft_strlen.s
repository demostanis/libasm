global ft_strlen

section .text

ft_strlen:
	xor rax, rax
_l1:
	cmp byte [rdi], 0
	je _end
	inc rax
	inc rdi
	jmp _l1
_end:
	ret
