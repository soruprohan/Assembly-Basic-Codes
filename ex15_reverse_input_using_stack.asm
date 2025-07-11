.model small
.stack 100h
.data
str1 db "enter your string : $"
str2 db 13,10,"after reversing your string : $"
.code
main proc
     mov ax,@data
     mov ds, ax
     
     lea dx, str1
     mov ah,09h
     int 21h
     
     mov cx,0
     
while_:
    mov ah,01h
    int 21h
    cmp al,0dh
    je end_while
    mov ah,0
    push ax
    inc cx
jmp while_
end_while:
     lea dx, str2
     mov ah,09h
     int 21h
     mov dx,0

for:
    pop dx
    mov ah,02h
    int 21h
loop for 

endp    