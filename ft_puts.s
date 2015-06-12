section .data

eol :
	.string  db 10, 0

section .text

extern _ft_putstr
global _ft_puts

_ft_puts:
	call _ft_putstr
	lea rdi, [rel eol.string]
	call _ft_putstr
	ret

