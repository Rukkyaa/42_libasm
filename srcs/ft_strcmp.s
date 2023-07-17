section .data
	;no data

section	.bss
	;no bss

section .text
	global ft_strcmp

ft_strcmp:
	mov al, [rdi]		;move *s1 to al
	mov bl, [rsi]		;move *s2 to bl
	cmp al, 0			;check if *s1 is null
	je end_ft_strcmp	;if it is, go to end_ft_strcmp
	cmp bl, 0			;check if s2 is null
	je end_ft_strcmp	;if it is, go to end_ft_strcmp
	cmp al, bl			;compare *s1 and *s2
	jne end_ft_strcmp	;if they are not equal, go to end_ft_strcmp
	inc rdi				;increment *s1
	inc rsi				;increment *s2
	jmp ft_strcmp		;if they are equal, continue

end_ft_strcmp:
	movzx rax, al	;rax = the ascii value of *s1
	movzx r8, bl	;register to stock tmp data
	sub rax, r8		;rax -= *s2, to check the value of the return
	ret
