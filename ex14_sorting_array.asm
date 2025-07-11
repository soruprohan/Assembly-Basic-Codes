INCLUDE 'EMU8086.INC'
ORG 100H
.MODEL SMALL
.DATA
ARR DB 5 DUP(?)
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;PRINT " ENTER 5 DIGITS : "
    MOV CX, 5
    
    MOV SI, 0
    
    INPUTS:
    MOV AH, 1
    INT 21H
    MOV ARR[SI], AL
    INC SI
    LOOP INPUTS
     
    MOV CX, 5
    
    OUTERLOOP:
    MOV BX, CX
    MOV SI, 0
    
    INNERLOOP:
    MOV AL, ARR[SI]
    MOV AH, ARR[SI+1]
    CMP AL, AH
    
    JC NO_SWAP  ; EIKHANE JUST JG DILEI DESCENDING ORDER E SAJAI DIBE
    
    MOV ARR[SI], AH
    MOV ARR[SI+1], AL
    
    NO_SWAP:
    INC SI
    DEC BX
    
    JNZ INNERLOOP
    
    LOOP OUTERLOOP
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV CX, 5
    MOV SI, 0
    OUTPUTS:
    MOV DL, ARR[SI]
    MOV AH, 2
    INT 21H
    MOV DL, 32
    MOV AH, 2
    INT 21H
    INC SI
    LOOP OUTPUTS
    

    
    
RET
    
    
