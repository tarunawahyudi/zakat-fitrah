; ------------------------------------------------------------
; File: tests/test_zakat.asm
; Description: Pengujian untuk kalkulator zakat fitrah
; Author: Taruna Wahyudi
; ------------------------------------------------------------

SECTION .data
    test_pass_msg db "Test Passed", 0xA, 0
    test_fail_msg db "Test Failed", 0xA, 0

    ; Data untuk pengujian
    test_cases db 3            ; Total kasus pengujian
    test_case_1 db 4, 2        ; Kasus 1: Jumlah orang 4, Harga per orang 2 (Expected: 8)
    test_case_2 db 5, 3        ; Kasus 2: Jumlah orang 5, Harga per orang 3 (Expected: 15)
    test_case_3 db 1, 7        ; Kasus 3: Jumlah orang 1, Harga per orang 7 (Expected: 7)

SECTION .bss
    result resb 1              ; Hasil dari perhitungan

SECTION .text
    extern calculate_zakat     ; Fungsi dari calculations.asm
    extern print_message       ; Fungsi dari output.asm

    global _start

_start:
    ; Pengujian kasus pertama
    mov al, [test_case_1]      ; Jumlah orang
    mov bl, [test_case_1 + 1]  ; Harga per orang
    call calculate_zakat       ; Panggil fungsi
    cmp al, 8                  ; Bandingkan hasil dengan expected value (8)
    jne fail_test_1
    call print_pass_message

fail_test_1:
    call print_fail_message

    ; Pengujian kasus kedua
    mov al, [test_case_2]      ; Jumlah orang
    mov bl, [test_case_2 + 1]  ; Harga per orang
    call calculate_zakat       ; Panggil fungsi
    cmp al, 15                 ; Bandingkan hasil dengan expected value (15)
    jne fail_test_2
    call print_pass_message

fail_test_2:
    call print_fail_message

    ; Pengujian kasus ketiga
    mov al, [test_case_3]      ; Jumlah orang
    mov bl, [test_case_3 + 1]  ; Harga per orang
    call calculate_zakat       ; Panggil fungsi
    cmp al, 7                  ; Bandingkan hasil dengan expected value (7)
    jne fail_test_3
    call print_pass_message

fail_test_3:
    call print_fail_message

    ; Keluar dari program
    mov eax, 60                ; Syscall: exit
    xor edi, edi
    syscall

; Fungsi untuk mencetak pesan "Test Passed"
print_pass_message:
    mov rdi, test_pass_msg
    call print_message
    ret

; Fungsi untuk mencetak pesan "Test Failed"
print_fail_message:
    mov rdi, test_fail_msg
    call print_message
    ret
