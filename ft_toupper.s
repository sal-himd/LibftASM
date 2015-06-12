extern _ft_islower

global _ft_toupper

section .text

_ft_toupper:
	call _ft_islower
	cmp rax, 1
	je upper
	mov rax, rdi
	ret

upper:
	sub rdi, 32
	mov rax, rdi
	ret
