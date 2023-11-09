org 100h

section .text
	
	mov cx, 4
	mov bx, 0
	
	start:
		mov ah, 2
		mov dx, [data+1]
		add dx, bx
		inc bx
		dec cx
		int 21h
		jnz start;
		
	mov ax, 4c00h
	int 21h
	
section .data
	data db 55, 54, 53, 52 