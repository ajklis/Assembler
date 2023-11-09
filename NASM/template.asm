	;To jest komentarz
	; tu mo�na wstawi�:
	; section .text
	; aby da� zna� NASMowi, �e to b�dzie w sekcji kodu.

	section .text ; poczatek sekcji kodu
			; This is where the actual assembly code is written. 
			; The term "self modifying code" means a program which modifies this section while being executed.


	org 100h	; Ta linia jest informacj� dla kompilatora, �e program wynikowy b�dzie typu .com. 
			; Informuje ona r�wnie� o tym, �e nasz kod znajdowa� si� b�dzie po uruchomieniu pod adresem 100h (256 dziesi�tnie).

	start:		; Start: mo�e by� to dowolna nazwa z dwukropkiem. Okre�la ona pocz�tek kodu w programie.			
		mov ah, 9
		mov dx, label
		int 21h ; wyswietlenie na ekran tego co siedzi pod label
				; 65 68 65 77
		
		mov ah, 0
		int 16h
		
		mov ax, 4c00h
		int 21h
	
	section .data ; poczatek sekcji danych zainicjowanych
			; This section is for defining constants, such as filenames or buffer sizes, this data does not change at runtime
		label db "CZESC,", 0x0, 65, 68, 65, 77, "$"
	section .bss


;nasm -o naszplik.com -f bin naszplik.asm