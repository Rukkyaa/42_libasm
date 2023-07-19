section .data
	;no data

section .bss
	;no bss

section .text
	global ft_read
	extern __errno_location

ft_read:
	mov rax, 0			;syscall number for write
	syscall				;call write
	cmp rax, 0			;cmp the return value with 0
	jl error_ft_read	;if the return value is negative, jump to error_write
	ret					;return

error_ft_read:
	neg rax							; negate the result to get the error number
	mov r8, rax						; copy the error number to r8
	call __errno_location wrt ..plt	; call __errno_location to get the address of errno
	mov [rax], r8					; store the error number at the address of errno
	mov rax, -1						; set rax to -1
	ret								; return
