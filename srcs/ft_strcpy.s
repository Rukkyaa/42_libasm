section .data
	;no data

section .bss
	;no bss

section .text
	global ft_strcpy

ft_strcpy:	;ft_strcpy(char *dest, char *src)
	xor rax, rax		;reset rax(counter)

.loop_ft_strcpy:
	cmp byte [rsi + rax], byte 0;check if src is at end
	je .end_ft_strcpy			;if src is at end, jump to end
	mov cl, [rsi + rax]			;move src to cl
	mov [rdi + rax], cl			;move cl to dest
	inc rax						;increment rax(counter)
	jmp .loop_ft_strcpy			;jump to loop

.end_ft_strcpy:
	mov cl, 0			;move 0 to cl
	mov [rdi + rax], cl	;move cl to dest
	mov rax, rdi		;move dest to rax
	ret					;return