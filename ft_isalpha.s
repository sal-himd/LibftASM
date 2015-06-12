extern _ft_islower
extern _ft_isupper

global _ft_isalpha

section .text

_ft_isalpha:
	call _ft_islower
	cmp rax, 0x1
	je end
	call _ft_isupper
	cmp rax, 0x1
	je end
	mov rax, 0x0

end:
	ret