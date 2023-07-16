section .data
	;no data

section .bss
	;no bss

section .text
	global ft_strlen

ft_strlen:	;ft_strlen(const char *s)
	mov rbx, rdi		;take the first argument(rdi) and put it in rbx
	cmp rbx, 0			;check if rbx is null
	je .end_ft_strlen	;if it is, jump to end
	xor rax, rax		;reset rax(counter) to 0

.loop_strlen:
	cmp	byte [rbx], 0	;check if the value of rbx is null
	je .end_ft_strlen	;if it is, jump to end
	inc rax				;increment rax(counter)
	inc rbx				;get the next char in the string
	jmp .loop_strlen	;loop

.end_ft_strlen:
	ret