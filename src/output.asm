section .text
global display_result

display_result:
    mov rax, 1
    mov rdi, 1
    mov rdx, 100
    syscall
    ret
