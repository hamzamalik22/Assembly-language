.model small
.stack 100h
.data
.code
    main proc
        mov cx, 10      ; initialize counter with 10
        mov dl, 48      ; moving Ascii of 0 in data register

        LabelPrint:     ; Open a label
            mov ah, 2
            int 21h
            inc dx      ; increment value of dx register by 1, from 0 -> 1 upto so on.
          ; add dx, 1     u can also do increment using primitive way
        
        Loop LabelPrint  ; start loop on LabelPrint, it will run loop until value of cx = 10
        mov ah, 4ch
        int 21h
    main endp
end main

