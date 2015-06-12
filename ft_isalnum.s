extern _ft_isalpha
extern _ft_isdigit

global _ft_isalnum

section .text

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 0x1
	je end
	call _ft_isdigit
	cmp rax, 0x1
	je end
	mov rax, 0x0
	ret 

end :
	ret