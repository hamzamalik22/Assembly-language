dosseg
.model small
.stack 100h
.data
var1 db '1'  ; initializing var1 with 1 or defining a variable
.code
Main proc

mov ax, @data  ; moves the memory location of .data into ax register
mov ds, ax   ; move data address into data segment
mov dl,var1  ; moving value of var1 into dl register
mov ah,2   ; Service routine for printing a character 
int 21h

main endp
End Main