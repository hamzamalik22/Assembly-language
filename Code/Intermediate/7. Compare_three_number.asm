    .model small
    .stack 100h
    .data
        msg1 db 'Input First Number: ', '$'
        msg2 db 'Input Second Number: ', '$'
        msg3 db 'Input Third Number: ', '$'
        msg4 db 'Greater Number is: ', '$'
    .code
        main proc 
            mov ax, @data  ; moves the memory location of .data into ax register
            mov ds, ax     ; move data address into data segment

            ; Input first number
            lea dx, msg1   ; printing msg1
            mov ah, 9
            int 21h

            mov ah, 1      ; Input from user
            int 21h

            sub al, 48    ; Convert ASCII to number
            mov bl, al    ; Store the first number in bl

            ; Input second number
            lea dx, msg2   ; printing msg2
            mov ah, 9
            int 21h

            mov ah, 1      ; Input from user
            int 21h

            sub al, 48     ; Convert ASCII to number
            mov cl, al    ; Store the second number in cl

            ; Input third number
            lea dx, msg3   ; printing msg3
            mov ah, 9
            int 21h

            mov ah, 1      ; Input from user
            int 21h

            sub al, 48     ; Convert ASCII to number
            mov dl, al    ; Store the third number in dl

            ; Compare the numbers to find the greatest
            mov al, bl    ; Move the first number to al for comparison
            cmp cl, al    ; Compare second number with first
            jg SecondIsGreater ; Jump if second number is greater

            cmp dl, al    ; Compare third number with first
            jg ThirdIsGreater ; Jump if third number is greater

            ; If none of the above conditions are met, then the first number is the greatest
            lea dx, msg4  ; printing msg4
            mov ah, 9
            int 21h
            mov dl, bl    ; Move the first number to dl
            add dl, 48    ; Convert the number to ASCII
            mov ah, 2     ; Print the greatest number
            int 21h
            jmp ExitProgram ; Jump to exit

        SecondIsGreater:
            cmp dl, cl    ; Compare third number with second
            jg ThirdIsGreater ; Jump if third number is greater
            ; If the above condition is not met, then the second number is the greatest
            lea dx, msg4  ; printing msg4
            mov ah, 9
            int 21h
            mov dl, cl    ; Move the second number to dl
            add dl, 48    ; Convert the number to ASCII
            mov ah, 2     ; Print the greatest number
            int 21h
            jmp ExitProgram ; Jump to exit

        ThirdIsGreater:
            ; If none of the above conditions are met, then the third number is the greatest
            lea dx, msg4  ; printing msg4
            mov ah, 9
            int 21h
            mov dl, dl    ; Move the third number to dl
            add dl, 48    ; Convert the number to ASCII
            mov ah, 2     ; Print the greatest number
            int 21h

        ExitProgram:
            mov ah, 4ch   ; Exit the program
            int 21h

        main endp
    end main
