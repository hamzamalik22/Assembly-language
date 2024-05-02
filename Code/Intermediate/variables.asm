dosseg
.model small
.stack 100h
.data
var1 db '1'
; var2 db ? we can also initialize a variable without any value
.code
Main proc

mov ax, @data  ; moves the memory location of @data into ax register
mov ds, ax   ; move data address into data register
mov ah,2
int 21h

main endp
End Main