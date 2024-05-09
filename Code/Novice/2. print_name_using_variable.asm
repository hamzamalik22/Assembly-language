.model small
.stack 100h
.data
    name1 db 'Hamza Malik$'  ; declaration of string
    reg db 'Reg. No. 22-CS-86','$'  ; alternate declaration of string
.code
main proc
    mov ax, @data  ; moves the memory location of .data into ax register
    mov ds, ax     ; move data address into data segment

    lea dx, name1  ; moving string name1 into dx register
    mov ah, 9      ; Service Routine for printing string
    int 21h

    lea dx, reg
    mov ah, 9
    int 21h

    mov ah, 4ch
    int 21h

main endp 
end main