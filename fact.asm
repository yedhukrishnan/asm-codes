%include 'asm_io.inc'

section .data
qin:	db "Enter the value of n: ",0

section .text
	global main

main:
	mov eax,qin
	call print_string
	call read_int
	mov ebx,eax
	mov eax,1
loop:	mul ebx
	dec ebx
	jnz loop
	call print_int
	call print_nl
	ret
