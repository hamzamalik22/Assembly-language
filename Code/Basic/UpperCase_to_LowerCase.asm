; Converting User's Capital Character input to Lowercase

dosseg
.model small
.stack 100h
.data
.code
Main proc 

mov ah, 1  ; Service routine for input
int 21h

mov dl, al  ; move the user input that is stored in al -> dl data register

add dl, 32   ; 97 (a) - 65 (A) = 32

mov ah, 2
int 21h

mov ah, 4ch
int 21h

Main endp
end main