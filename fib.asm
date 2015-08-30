%include 'asm_io.inc'

section .data
qin:	db "Enter the value of n: ", 0

section .text
	global main			
	
main:
	mov eax, qin
	call print_string
	call read_int
	mov ebx, eax
	mov eax, 0
	call print_int
	call print_nl
	dec ebx
	jz exit
	mov ecx, eax
	mov eax, 1
	call print_int
	call print_nl
	dec ebx
	jz exit
	mov edx, eax
loop:	mov eax, 0
	add eax, ecx
	add eax, edx
	call print_int
	call print_nl
	mov ecx, edx
	mov edx, eax
	dec ebx
	jnz loop
exit:	ret
	
