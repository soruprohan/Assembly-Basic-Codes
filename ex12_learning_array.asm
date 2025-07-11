INCLUDE "EMU8086.INC"
ORG 100H
.MODEL SMALL
.DATA
    ARR1 DB 8,3,4,2,1
    ARR2 DB 5 DUP(1) ; eita kintu 1st bracket
    ARR3 DB 5 DUP(?)

.CODE
    MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV SI, OFFSET ARR1
    
    MOV CX, 5 ; INITIALIZING COUNTER
    
    PRINT " THE ARRAY_1 ELEMENTS ARE : "
    
    LOOP_ARRAY1:
    MOV DL, [SI]
    ADD DL, 48
    MOV AH, 2
    INT 21H
    
    MOV DL, 32 ; PRINTING SPACE
    INT 21H
    
    INC SI
    LOOP LOOP_ARRAY1
    
    MOV SI, OFFSET ARR2
    
    MOV CX, 5 ; INITIALIZING COUNTER  
    
    MOV DL, 10
    MOV AH, 2
    INT 21H
    MOV DL, 13
    INT 21H
    
    PRINT " THE ARRAY_2 ELEMENTS ARE : "
    
    LOOP_ARRAY2:
    MOV DL, [SI]
    ADD DL, 48
    MOV AH, 2
    INT 21H
    
    MOV DL, 32 ; PRINTING SPACE
    INT 21H
    
    INC SI
    LOOP LOOP_ARRAY2
    
    ; INITIALIZATION ARRAY 3 BY USER
    
    MOV CX, 5
    
    MOV DL, 10
    MOV AH, 2
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV SI, OFFSET ARR3
    
    PRINT " GIVE THE DIGITS YOU WANT TO INPUT : "
    
    LOOP_INPUT:
    MOV AH, 1
    INT 21H
    MOV [SI], AL
    INC SI
    LOOP LOOP_INPUT
    
    MOV DL, 10
    MOV AH, 2
    INT 21H
    MOV DL, 13
    INT 21H
    
    PRINT " YOU HAVE ENTERED : "
    
    MOV SI, OFFSET ARR3  ;---------------->>> EIKHANE EKTA CATCH ASE OFFSET ABAR DITE HOI,,,KI EKTA OBOSTHA BAL
    
    MOV CX, 5
    
    LOOP_OUTPUT:
    MOV DL, [SI] ; ---------------->>> EIKHANEO EKTA CATCH ASE KI EKTA OBOSTHA,, EIKHANE 48 ADD NA KORLEO HOBE
    MOV AH, 2
    INT 21H
    MOV DL, 32
    INT 21H
    INC SI
    LOOP LOOP_OUTPUT
    
RET