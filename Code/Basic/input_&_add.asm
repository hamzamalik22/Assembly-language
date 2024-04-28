; Inputing & Adding two numbers

dosseg
.model small
.stack 100h
.data
.code
Main proc 

mov ah, 1  ; upon input , when we enter 1 it not store 1 in al accomulator register   
int 21h    ; instead it stores its ASCII value 49 in al

mov cl, al  ;  49 -> cl register
sub cl, 48  ;  49 - 48 = 1 stored in cl register

mov ah, 1
int 21h

mov bl, al
sub bl, 48

add bl, cl

add bl, 48

mov dl, bl
mov ah, 2
int 21h

mov ah, 4ch
int 21h

Main endp
end main