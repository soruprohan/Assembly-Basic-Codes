
org 100h

mov al,01h
mov bl,00h
mov cl,0ah
addition:
        mov al,5
        add bl,al
        inc al
        dec cl
        jnz addition    

ret




