org 100h

section .text
	
	start:
		;mov bl, 10
		;mov al, [liczba]
		;mul bl
		
		;cmp ax, 100
		;jg wieksze_od_100
		;jl mniejsze_od_100
		;je rowne_100
		mov dx, 0
		
		jmp wczytaj
	start1:
		mov dx, ax
		
		jmp koniec
	wczytaj:
		mov ah, 1
		int 21h
		cmp ax, 1Ch
		je start1
		add dx, ax
		jmp wczytaj
		
		
		
		
	wieksze_od_100:
		mov dx, wieksze
		jmp wypisz
	
	mniejsze_od_100:
		mov dx, mniejsze
		jmp wypisz
		
	rowne_100:
		mov dx, rowne
		jmp wypisz
	
	wypisz:
		mov ah, 9
		int 21h
		
	koniec:	
		mov ax, 4c00h
		int 21h
	
section .data
	liczba db 100
	wieksze db "Wynik wiekszy od 100 $"
	mniejsze db "Wynik mniejszy od 100 $"
	rowne db "Wynik rowny 100 $"
	