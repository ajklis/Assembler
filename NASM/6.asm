org 100h

section .text
	start:
		mov ah, 1
		int 21h
		sub al, 48; zmniejsz zeby byla 1 a nie wartosc '1' w ascii
		mov bl, al
		mov cx, 7
		cmp bx, cx
		ja  wypisz_wieksze
		jb  wypisz_mniejsze
		je  wypisz_rowne
		
	wypisz_mniejsze:
		mov dx, mniejsza
		jmp wypisz
	
	wypisz_wieksze:
		mov dx, wieksza
		jmp wypisz
	
	wypisz_rowne:
		mov dx, rowne
		jmp wypisz
		
	wypisz:
		mov ah, 9
		int 21h
		jmp koniec
	
	koniec:	
		mov ax, 4c00h
		int 21h
	
section .data
	mniejsza db "Pierwsza liczba jest mniejsza$"
	wieksza db "Pierwsza liczba jest wieksza$"
	rowne db "Liczby sa rowne$"