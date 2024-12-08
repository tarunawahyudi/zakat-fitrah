section .text
global calculate_zakat

calculate_zakat:

    mov rax, [rdi]
    mov rbx, 25
    mul rbx
    mov [rsi], rax
    ret
