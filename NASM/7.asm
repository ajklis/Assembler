org 100h

section .text
	start:
		mov ah, 9
		mov dx, jak_masz
		int 21h
		
		mov ah, 0ah
		mov dx, imie
		int 21h
		
		mov ah, 9
		mov dx, powitanie
		int 21h
		
		mov ah, 9
		mov dx, imie+2
		int 21h
		
	koniec:	
		mov ax, 4c00h
		int 21h
	
section .data
	
	jak_masz db "Jak masz na imie? $"
	
	imie 	db		20		; maksymalna liczba znakow do pobrania
			db		0		; tu bedzie ile znakow dostano
			times 22 db "$" ; miejsce na dane
			
	powitanie db 10, "Czesc $"