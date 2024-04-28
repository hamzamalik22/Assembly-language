; Printing a Chararcter on Screen + Assembly Syntax
dosseg  ; Manages syntax if boilerplate syntax is typed in wrong sequence 
.model small  ; Assigning size of Program , small : data <= 64KB && code <= 64KB 
.stack 100h  ; assigning stack space size
.data 
; hold variables and data
.code  ; Hold Code for the program 

main proc   ; Procedure begins

mov dl, 72  ; move ASCII code of H in dl register

mov ah, 2  ; Service Routine for prinitng

int 21h  ; Interrupt Call

mov ah, 4ch  ; exit from ah register

int 21h  ; Interrupt Call

main endp  ; procedure ends

end main  ; end program