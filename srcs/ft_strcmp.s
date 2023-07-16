section .data
	;no data

section	.bss
	;no bss

section .text
	global ft_strcmp

ft_strcmp:
	xor rcx, rcx		;set rcx to -1 to start at 0
	jmp loop_ft_strcmp

loop_ft_strcmp:
	inc rcx							;increment the counter
	mov al, [rdi + rcx]				;move the current char of s1 to al
	cmp al, 0						;check if s1 is null
	je end_ft_strcmp				;if it is, return 0
	mov bl, [rsi + rcx]				;move the current char of s2 to bl
	cmp bl, 0						;check if s2 is null
	je end_ft_strcmp				;if it is, return 0
	cmp al, bl						;compare the current char of s1 and s2
	je loop_ft_strcmp				;if they are equal, continue
	jmp end_ft_strcmp				;if they are not, return the difference

end_ft_strcmp:
	mov rax, [rdi + rcx]
	sub rax, [rsi + rcx]
	ret
