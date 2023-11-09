org 100h

section .text
	start:
		mov cx, 5
		
	petla:
		mov ah, 9
		mov dx, napis
		int 21h
		;loop petla
		dec cx
		; sub cx, 1 - to samo co dec
		jnz petla ; jump if not zero
		
	mov ax, 4c00h
	int 21h
	
section .data
	data db 54, 53, 52, 51 
	napis db "Napis $"