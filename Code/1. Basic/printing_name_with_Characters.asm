; Printing my name using Characters = Hamza

dosseg
.model small
.stack 100h
.data
.code
Main proc 

mov dl,'H'
mov ah,2
int 21h
mov dl,'a'
mov ah,2
int 21h
mov dl,'m'
mov ah,2
int 21h
mov dl,'z'
mov ah,2
int 21h
mov dl,'a'
mov ah,2
int 21h

mov ah,4ch
int 21h

Main endp
end main