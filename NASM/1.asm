org 100h

section .text
	start:
		mov cx, [data]
		sub cx, 32
		mov ah,2
		mov dx, cx
		int 21h
		
		mov ax, 4c00h
		int 21h
	
section .data
	data db 54, 53, 52, 51 