.model small
.stack 100h
.data
    msg1 db 10,13,'Input Fist Number :', '$'
    msg2 db 10,13,'Input Second Number :', '$'
    msg3 db 10,13,'Input Third Number :', '$'
    msg4 db 10,13,'Greater Number is :', '$'

    num1 db ?
    num2 db ?
    num3 db ?
    greater db ?

.code
    main proc 
        mov ax, @data  ; moves the memory location of .data into ax register
        mov ds, ax     ; move data address into data segment

        lea dx, msg1   ; printing msg1
        mov ah, 9
        int 21h

        mov ah, 1      ; Input from user num1
        int 21h 

        mov num1, al   ; mov input into variable num1

        lea dx, msg2  ; printing msg2
        mov ah, 9
        int 21h

        mov ah, 1    ; Input from user num2
        int 21h

        mov num2, al  ; mov input into variable num2

        lea dx, msg3  ; printing msg3
        mov ah, 9
        int 21h

        mov ah, 1    ; Input from user num3
        int 21h

        mov num3, al   ; mov input into variable num3

        mov bl, num1   ; mov num1 into bl register, as comparison required one register

        cmp bl, num2   ; first comparison
        jg First       ; if num > num2 --> jump to First
 
        mov bl, num2   ; num2 is greater, mov num2 --> bl register
        jmp Second

    First:  
        mov bl, num1   ; mov num2 --> bl register
    
    Second:
        cmp bl, num3  ; Second comparison
        jmp Third
        mov bl, num3
    

    Third:
        mov dl, bl
        mov greater, dl
        jmp Display


    Display:
        lea dx, msg4  ; printing msg4
        mov ah, 9
        int 21h

        mov dl, greater
        mov ah, 2
        int 21h

    ExitProgram:
        mov ah,4ch
        int 21h

    main endp
end main