section .data
	;no data

section .bss
	;no bss

section .text
	extern __errno_location
	global ft_strdup
	extern ft_strlen
	extern malloc
	extern ft_strcpy

ft_strdup:
	call ft_strlen          ;rax = ft_strlen(rdi)
	inc rax                 ;increment rax to include '\0'
	push rdi                ;push rdi to the stack
	mov rdi, rax            ;rdi = rax 
	call malloc wrt ..plt   ;call malloc with length of string(rax)
	mov rdi, rax            ;moving dst's string to rdi
	pop rsi                 ;moving src's string to rsi
	call ft_strcpy          ;call ft_strcpy(rdi, rsi)
	ret
