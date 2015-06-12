global _ft_strlen

_ft_strlen:
	cmp rdi, 0x0
	je	fail
	mov rdx, rdi
    mov rax, 0x0
    mov rcx, -0x1
    repnz scasb
    sub rdi, rdx
    dec rdi
    mov rax, rdi
    ret

fail:
	mov rax, 0x0
	ret