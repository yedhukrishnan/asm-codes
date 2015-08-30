section .data
msg: db "hello, world!", 13

section .text
	global main

main:
	mov edx, 13
	mov eax, msg
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov ebx, 3
	mov eax, 1
	int 0x80
