%include 'asm_io.inc'

section .data
qin:	db "Enter choice :", 0
qa: db "Enter a: ", 0
qb: db "Enter b: ", 0
qq: db "Remainder:", 0
qmenu: db "1.Add, 2.Subtract, 3.Multiply, 4.Divide:", 0

section .text
	global main

main:
	mov eax, qmenu
	call print_string
	call print_nl
	mov eax, qin
	call print_string
	call read_int
	mov edx, eax
	mov eax, qa
	call print_string
	call read_int
	mov ebx, eax
	mov eax, qb
	call print_string
	call read_int
	mov ecx, eax
	mov eax, ebx
	cmp edx, 1
	jne subt
	add eax, ecx
	call print_int
	jmp exit
subt:	cmp edx, 2
	jne mult
	sub eax, ecx
	call print_int
	jmp exit
mult:	cmp edx, 3
	jne divi
	mul ecx
	call print_int
	jmp exit	
divi:	cmp edx, 4
	jne exit
	mov edx, 0
	div ecx
	call print_int
	call print_nl
	mov eax, qq
	call print_string
	mov eax, edx
	call print_int
	call print_nl
exit:	call print_nl
	ret
