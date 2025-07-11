ORG 100H

; USING THE 16 BIT REGISTER, WE CAN USE THE 8 BIT VERSION OF THE 16BIT REGISTER
; THE EXAMPLE OF THE 8 BIT VERSION IS GIVEN BELOW 

;MOV AX, 10
;MOV BX, 2
;MUL BX

MOV AL, 10     ; AL --> 00 0A
MOV BL, 5      ; BL --> 00 05
ADD AL, BL     ; AL = AL + BL ; 00 0F
SUB AL, BL     ; AL = AL - BL ; 00 0A
MUL BL         ; AL = AL * BL ; ------->> 50 er hexa representation store thakbe 00 32
DIV BL         ; AL = AL / BL ; 00 0A

RET