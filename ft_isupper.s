global _ft_isupper
section .text;

_ft_isupper: 
	cmp rdi, 65
	jl false
	cmp rdi, 90
	jg false
	mov rax, 1
	ret 

false:
	mov rax, 0
	ret 