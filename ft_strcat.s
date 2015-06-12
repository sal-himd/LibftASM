global _ft_strcat
section .text;

_ft_strcat:
	push rdi
	cmp rdi, 0x0
	je end
	cmp rsi, 0x0
	je end
	
go_to_end:
	cmp [rdi], byte 0x0
	je cpy_loop
	inc rdi
	jmp go_to_end

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


