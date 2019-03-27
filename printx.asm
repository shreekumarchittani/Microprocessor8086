
assume cs:code
code segment
start:
        mov ah,00h   ; function to set video mode
        mov al,02h   ; 80 x 25 gray scale, try 03
        int 10h      ;

        mov ah,02    ; function to set cursor
        mov dh,12d   ;Row
        mov dl,40d   ;column
        int 10h

        mov al, ‘X’
        mov bl, 8ch ;page numnber
        mov cl,1    ;number of times you want to write character
        mov ah,9    ; write character at cursors position
        int 10h

        mov ah,07h  ;character input without echo
        int 21h

        mov ah,4ch
        int 21h
code ends
end start