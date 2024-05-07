.model small
.stack 100h
.data
    msg1 db 'Input Fist Number :', '$'
    msg2 db 'Input Second Number :', '$'
    msg3 db 'Greater Number is :', '$'
.code
    main proc 
        mov ax, @data  ; moves the memory location of .data into ax register
        mov ds, ax     ; move data address into data segment

        lea dx, msg1   ; printing msg1
        mov ah, 9
        int 21h

        mov ah, 1      ; Input from user
        int 21h

        sub al, 48    ; Convert 
        mov bl,al

        lea dx, msg2  ; printing msg1
        mov ah, 9
        int 21h

        mov ah, 1
        int 21h

        sub al, 48  ; Converting Ascii to number

        cmp al, bl 
        jg First

        lea dx, msg3  ; printing msg1
        mov ah, 9
        int 21h
        mov dl, bl
        add dl, 48   ; Converting Ascii to number
        mov ah, 2
        int 21h
        jmp ExitProgram

    First:
        lea dx, msg3
        mov ah, 9
        int 21h
        mov dl, bl
        add dl, 48
        mov ah, 2
        int 21h
    
    ExitProgram:
        mov ah,4ch
        int 21h

    main endp
end main