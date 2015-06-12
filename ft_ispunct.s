extern _ft_isalnum
extern _ft_isprint

global _ft_ispunct

section .text

_ft_ispunct:
	call _ft_isprint
	cmp rax, 0
	je false
	cmp rdi, 32
	je false
	call _ft_isalnum
	cmp rax, 1
	je false
	mov rax, 1
	ret

false:
	mov rax, 0
	ret