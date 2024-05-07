.model small
.stack 100h
.data
    myname db 'Hamza Malik' ,'$'
    reg_no db '22-CS-86', '$'
    age db '20'
.code 
main proc 
    mov ax , @data ; moves the memory location of .data into ax register
    mov ds, ax     ; move data address into data segment

    lea dx, myname  ; moving string myname into dx register
    mov ah, 9
    int 21h

    mov dl, 10 ; Ascii code of NewlineFeed, that will move the next instruction to next line
    mov ah, 2
    int 21h

    mov dl, 13 ; Ascii code of CarriageReturn, that will move instruction to start of line
    mov ah, 2
    int 21h

    lea dx, reg_no
    mov ah, 9
    int 21h

    mov dl, 10 ; Ascii code of NewlineFeed, that will move the next instruction to next line
    mov ah, 2
    int 21h

    mov dl, 13 ; Ascii code of CarriageReturn, that will move instruction to start of line
    mov ah, 2
    int 21h

    mov dl, age
    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main