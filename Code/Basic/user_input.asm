; Getting User Input

dosseg
.model small
.stack 100h
.data
.code
Main proc 

mov ah, 1  ; Service routine for input
int 21h

mov dl, al  ; move the user input that is stored in al -> dl data register

mov ah, 2
int 21h

mov ah, 4ch
int 21h

Main endp
end main