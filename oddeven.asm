%include 'asm_io.inc'

section .data
qin:	db "Enter the number: ", 0
qodd:	db "Odd", 0
qeven:db "Even", 0

section .text
	global main

main:
	mov eax, qin
	call print_string
	call read_int
	mov ebx, 2
	div ebx
	cmp edx, 0
	je even
	mov eax, qodd
	call print_string
	jmp exit
even:	mov eax, qeven
	call print_string
exit:	call print_nl
	ret
