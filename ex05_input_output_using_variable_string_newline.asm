; SOME FUNTIONAL KEYS
; 1 --> single key input
; 2 --> single key output
; 9 --> charecter string output

.MODEL SMALL ; eta dia code and data segment thake eta bujhai
.STACK 300H  ; eta dia memory size define kora hoilo

.DATA   ; code e ekta data segment thakte pare and ekta code segment thakte pare
VAR1 DB 3   ; create a varibale and instantly initializzed it
VAR2 DB ?   ; create another one but didn't initialized it
STR1 DB "LOOP CONCEPT PRINTING A TO Z $"

.CODE   ; code segment
MAIN PROC
    
    MOV AX, @DATA  ; converting data segment into coding part
    MOV DS, AX   
    
    MOV AH, 1   ; input er khetre agei execute ,,function and sathe sathe execute
    INT 21H     ; int 21h dia oi funtion ta call and execute bujhai
    MOV VAR2, AL  ; intitially jei data user dibe seta al register e thakbe,jeta var2 to te nia nilam
 
                ; newline print code
    MOV AH, 2   ; mov ah, 2 output dekhanor jonno (1digit), eta dia newline print kora jai
    MOV DL, 10  ; output er jonno obossoi dl register use korte hobe
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV AH, 2 ; output dekhano 1digit
    ADD VAR1, 48 ; kintu output ascii te thake tai,obossoi 48 add korte hobe 
    MOV DL, VAR1 ; as usual print er jonno dl regitser use korte hobe
    INT 21H
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV AH, 2
    MOV DL, VAR2
    INT 21H
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV AH, 9
    LEA DX, STR1 ; load effective address(lea)
    INT 21H

    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H 
    
    MOV CX, 26
    MOV AH, 2
    MOV DL, 'A'
    
    LEVEL1:
    INT 21H
    INC DL
    LOOP LEVEL1