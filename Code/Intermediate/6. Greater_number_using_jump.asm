.model small
.stack 100h
.data
    msg1 db 10,13,'Input Fist Number :', '$'
    msg2 db 10,13,'Input Second Number :', '$'
    msg3 db 10,13,'Greater Number is :', '$'

    num1 db ?
    num2 db ?
.code
    main proc 
        mov ax, @data  ; moves the memory location of .data into ax register
        mov ds, ax     ; move data address into data segment

        lea dx, msg1   ; printing msg1
        mov ah, 9
        int 21h

        mov ah, 1      ; Input from user
        int 21h 

        mov num1, al

        lea dx, msg2  ; printing msg1
        mov ah, 9
        int 21h

        mov ah, 1
        int 21h

        mov num2, al 

        mov bl, num1

        cmp bl, num2
        jg First

        lea dx, msg3  ; printing msg1
        mov ah, 9
        int 21h
        mov dl, num2
        mov ah, 2
        int 21h
        jmp ExitProgram

    First:
        lea dx, msg3
        mov ah, 9
        int 21h
        mov dl, num1
        mov ah, 2
        int 21h
    
    ExitProgram:
        mov ah,4ch
        int 21h

    main endp
end main