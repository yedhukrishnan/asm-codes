%include 'asm_io.inc'

section .data
qin: db "Enter limit: ", 0
qno: db "Enter number: ", 0

section .bss
ar1:	resd 10

section .text
	global main
	
main:
	mov eax, qin
	call print_string
	call read_int
	mov edx, eax
	mov ebx, 0
loop1:mov eax, qno
	call print_string
	call read_int
	mov [ar1+4*ebx], eax
	inc ebx
	cmp ebx, edx
	jne loop1
	mov eax, 0
	mov ebx, 0
loop2:cmp eax, [ar1+4*ebx]
	jnc skip
	mov eax, [ar1+4*ebx]
skip:	inc ebx
	cmp ebx, edx
	jne loop2
	call print_int
	call print_nl
	ret
	
