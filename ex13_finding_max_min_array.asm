INCLUDE "EMU8086.INC"
ORG 100H
.MODEL SMALL
.DATA
    ARR1 DB 3,8,4,2,1

.CODE
    MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV SI, OFFSET ARR1
    MOV CX, 5             ; LEN EQU($-ARR1) ETA USE KORLE AGE 1 KOMAI NITE HOBE SUB LEN, 1
    MOV BL, [SI]  ; MIN
    MOV BH, [SI]  ; MAX



    FOR:
     
    CMP BH, [SI] 
    JG X
     
    MOV BH, [SI]
   
    X: 
    CMP BL, [SI]  
    JL Y
     
    MOV BL, [SI] 
      
    Y: 
    INC SI
    
    LOOP FOR
    
    PRINT "THE LARGEST VALUE OF THE ARRAY IS : " 
    MOV DL, BH
    ADD DL, 48
    MOV AH, 2
    INT 21H
    
    MOV DL, 10
    MOV AH, 2
    INT 21H
    MOV DL, 13
    INT 21H
    
    PRINT "THE SMALLEST VALUE OF THE ARRAY IS : " 
    MOV DL, BL
    ADD DL, 48
    MOV AH, 2
    INT 21H
    
     
    
RET
    