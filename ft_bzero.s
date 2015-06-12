global _ft_bzero

section .text

_ft_bzero: 
	cmp rsi, 0x0
	je end
	mov byte [rdi], 0x0
	dec rsi
	inc rdi
	jmp _ft_bzero

end: 
	ret