section .data
    ;no data

section .bss
    ;no bss

section .text
    global ft_write
    extern __errno_location

ft_write:
    mov rax, 1			;syscall number for write
    syscall				;call write
    cmp rax, 0			;cmp the return value with 0
    jl error_write		;if the return value is negative, jump to error_write
	ret					;return

error_write:
    neg rax							; negate the result to get the error number
    mov r8, rax						; copy the error number to r8
    call __errno_location wrt ..plt	; call __errno_location to get the address of errno
    mov [rax], r8					; store the error number at the address of errno
    mov rax, -1						; set rax to -1
    ret								; return
