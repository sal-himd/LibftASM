section .data

null : 
	.string  db "(null)", 0

global _ft_putstr
extern _ft_strlen

section .text

_ft_putstr:
	cmp rdi, 0x0
	je put_null

put_str:
	push	rdi
	call	_ft_strlen
	mov		rdx, rax
	pop		rsi
	mov		rax, 0x2000004
	mov		rdi, 0x1
	syscall
	jc fail
	mov rax, 0x1
	ret

put_null:
	lea rdi, [rel null.string]
	jmp put_str

fail:
	mov rax, 0x0
	ret
