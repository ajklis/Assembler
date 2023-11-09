org 100h

section .text
	start:
		mov ah, 1
		int 21h
		cmp al, 65 ; sprawdzenie czy mala literka
		jae szansa_wielka
		mov dx, blad
		jmp wypisz_blad
		
	szansa_wielka:
		cmp al, 90
		jbe wielka
		cmp al, 97
		jae szansa_mala
		mov dx, blad
		jmp wypisz_blad
		
	szansa_mala:
		cmp al, 122
		jbe mala
		mov dx, blad
		jmp wypisz_blad
		
	wielka:
		add al, 32
		xor dx, dx
		mov dl, al
		jmp wypisz_litere
	
	mala:
		sub al, 32
		xor dx, dx
		mov dl, al
		jmp wypisz_litere
	
	wypisz_blad:
		mov ah, 9
		int 21h
		jmp koniec
	
	wypisz_litere:
		mov ah, 2
		int 21h
		jmp koniec
	
	koniec:	
		mov ax, 4c00h
		int 21h
	
section .data
	blad db "To nie jest literka$"
	