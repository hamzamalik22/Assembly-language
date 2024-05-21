.model small
.stack 100h
.data
.code
    main proc
        mov cx, 26      ; initialize counter of 26
        mov dl, 65      ; moving Ascii of A in data register

        LabelPrint:     ; Open a label
            mov ah, 2
            int 21h
            inc dx      ; increment value of dx register by 1, from 26 -> 27 upto so on.
          ; add dx, 1     u can also do increment using primitive way
        
        Loop LabelPrint  ; start loop on LabelPrint, it will run loop until value of cx = 10
        mov ah, 4ch
        int 21h
    main endp
end main

