org 100h

section .text
	start:
		mov ah, 1; odczytanie klawisza z klawiatury i wyswietlenie na ekranie
		int 21h
		
		;spacja
		mov dx, msg
		mov ah, 9
		int 21h
		
		mov dl, al
		mov ah, 2
		int 21h
		
		mov ax, 4c00h
		int 21h
	
section .data
	msg db ' $', 