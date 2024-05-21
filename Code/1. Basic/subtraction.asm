; Subtraction of two numbers

dosseg
.model small
.stack 100h
.data
.code
Main proc 

mov bl, 10  ; move 10 -> bl base register
mov cl, 6  ; move 6 -> cl counter register
sub bl, cl  ; sub 10 - 6 & store answer in bl register

add bl, 48  ; converting answer to it's ASCII code.
            ; we got 10 - 6 = 4 , 4 in Ascii code represents a control character but 
            ; our answer is 4 , so we add 4 + 48 = 52 which is the Ascii of 4

mov dl, bl
mov ah, 2
int 21h

mov ah,4ch
int 21h

Main endp
end main