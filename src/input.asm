section .text
global get_input

get_input:
    mov rax, 0
    mov rdi, 0
    mov rdx, 4
    syscall

    mov rbx, 0
.convert_loop:
    movzx rcx, byte [rsi]
    cmp rcx, 10
    je .done
    sub rcx, '0'
    imul rbx, rbx, 10
    add rbx, rcx
    inc rsi
    jmp .convert_loop

.done:
    mov [rsi-4], rbx
    ret
