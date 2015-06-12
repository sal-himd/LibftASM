global _ft_strcpy
section .text;

_ft_strcpy:
	push rdi
	cmp rdi, 0x0
	je end
	cmp rsi, 0x0
	je end

cpy_loop :
	cmp [rsi], byte 0x0
	je exit
	mov al, [rsi]
	mov [rdi], al
	inc rdi
	inc rsi
	jmp cpy_loop

exit :
	mov [rdi], byte 0x0
	
end:
	pop rax
	ret