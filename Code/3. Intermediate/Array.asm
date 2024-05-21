.model small
.stack 100
.data
    array1 db '1','2','3','4'  ; Iniatilize an array
.code
Main proc 
    mov ax, @data
    mov ds, ax

    mov si, offset array1     ; storing starting address of array in si(segment instruction)

    mov  cx, 4      ; initailize counter of 4

    L1:
        mov dx, [si]   ; mov data at corresponding location in array to dx (firstly it will be 
                       ;      the starting value of array)
        mov ah, 2
        int 21h
        inc si         ; increment value of si(means now si move it's pointer to next element arr)
        Loop L1

    mov ah, 4ch 
    int 21h

    main endp

    end main