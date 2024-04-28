; Addition of two numbers

dosseg
.model small
.stack 100h
.data
.code
Main proc 

mov bl, 2  ; move 2 -> bl base register
mov cl, 3  ; move 3 -> cl counter register
add bl, cl  ; add 2 + 3 & store answer in bl register

add bl, 48  ; converting answer to it's ASCII code.
            ; we got 3 + 2 = 5 , 5 in Ascii code represents a control character but 
            ; our answer is 5 , so we add 5 + 48 = 53 which is the Ascii of 5

mov dl, bl
mov ah, 2
int 21h

mov ah,4ch
int 21h

Main endp
end main