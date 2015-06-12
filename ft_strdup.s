extern _malloc
extern _ft_strlen
extern _ft_memcpy
global _ft_strdup

section .text

_ft_strdup:
	cmp rdi, 0x0
	je null

	push rbp
	mov rbp, rsp
	push rdi

	call _ft_strlen
	push rax

	mov rdi, rax
	call _malloc

	mov rdi, rax
	pop rdx
	pop rsi
	call _ft_memcpy

	mov byte [rdi + rdx], 0x0

	mov rsp, rbp
	pop rbp
	ret

null :
	mov  rax, 0x0
	ret