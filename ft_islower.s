global _ft_islower
section .text;

_ft_islower: 
	cmp rdi, 97
	jl false
	cmp rdi, 122
	jg false
	mov rax, 1
	ret 

false:
	mov rax, 0
	ret 