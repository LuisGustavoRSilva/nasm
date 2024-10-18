section .data
    msg db 'Hello, World', 10

section .text
    global _start

_start:
    mov rax, 1      ; sys_write system call
    mov rdi, 1      ; file descriptor 1 (stdout)
    mov rsi, msg    ; pointer to the message
    mov rdx, 15     ; message length
    syscall

    mov rax, 60     ; sys_exit system call 
    xor rdi, rdi    ; exit code 0
    syscall 

