	;To jest komentarz
	; tu mo¿na wstawiæ:
	; section .text
	; aby daæ znaæ NASMowi, ¿e to bêdzie w sekcji kodu.

	section .text ; poczatek sekcji kodu
			; This is where the actual assembly code is written. 
			; The term "self modifying code" means a program which modifies this section while being executed.


	org 100h	; Ta linia jest informacj¹ dla kompilatora, ¿e program wynikowy bêdzie typu .com. 
			; Informuje ona równie¿ o tym, ¿e nasz kod znajdowaæ siê bêdzie po uruchomieniu pod adresem 100h (256 dziesiêtnie).

	start:		; Start: mo¿e byæ to dowolna nazwa z dwukropkiem. Okreœla ona pocz¹tek kodu w programie.			
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