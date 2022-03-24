section .text
global _start
_start:
	mov CX, 5
	xor EAX, EAX
	xor ESI, ESI
	s:
		mov AL, [EBX]
		cmp EAX, 6
		je ok
		inc EBX
	loop s
	ok:
		mov [save + ESI], AL
		inc ESI
		jmp s

section .data
msg 		db 10, 20, 30, 45, 6, 3, 22, 1, 3, 44, 5, 6, 63, 2, 4, 5, 6,
len_msg 	equ $$ - msg
save		db 00, 00, 00
len_save	equ $$ - save