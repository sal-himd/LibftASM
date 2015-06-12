extern _ft_isupper

global _ft_tolower

section .text

_ft_tolower:
	call _ft_isupper
	cmp rax, 1
	je lower
	mov rax, rdi
	ret

lower:
	add rdi, 32
	mov rax, rdi
	ret