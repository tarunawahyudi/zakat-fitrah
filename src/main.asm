section .data
    welcome db "=== Zakat Fitrah Calculator ===", 10, 0
    input_prompt db "Masukkan jumlah anggota keluarga: ", 0
    result_msg db "Jumlah zakat fitrah yang harus dibayar: ", 0
    github_info db "Created by Taruna Wahyudi | GitHub: https://github.com/tarunawahyudi", 10, 0

section .bss
    family_count resb 4
    zakat_total resb 4

extern get_input
extern calculate_zakat
extern display_result

section .text
global _start

_start:
    mov rdi, welcome
    call display_result

    mov rdi, input_prompt
    mov rsi, family_count
    call get_input

    mov rdi, family_count
    mov rsi, zakat_total
    call calculate_zakat

    mov rdi, result_msg
    mov rsi, zakat_total
    call display_result

    mov rdi, github_info
    call display_result

    mov rax, 60
    xor rdi, rdi
    syscall
