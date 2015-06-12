global _ft_cat
extern _ft_bzero

section .data

buffer :
	.string times 2048 db 0
	.size equ $ - buffer

section .text

_ft_cat:
	push	rdi
	cmp		rdi, 0x0
	jl      end

put:
	pop		rdi

	lea		rsi, [rel buffer.string]
	mov		rdx, buffer.size
	mov		rax, 0x2000003
	syscall
	jc end

	cmp		rax, 0x0
	jle		end

	push	rdi

	mov		rdi, 0x1
	lea		rsi, [rel buffer.string]
	mov		rdx, buffer.size
	mov		rax, 0x2000004
	syscall
	jc end
	
	jmp		put

end:
	ret