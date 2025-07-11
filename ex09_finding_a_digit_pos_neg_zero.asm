ORG 100H

.MODEL SMALL

.DATA
    MSG1 DB 10, 13, "ENTER A DIGIT (-9,9) : $"
    MSG2 DB 10, 13, "THE DIGIT IS POSITIVE GETTER THAN ZERO$"
    MSG3 DB 10, 13, "THE DIGIT IS NEGATIVE LESS THAN ZERO$"
    MSG4 DB 10, 13, "THE DIGIT IS ZERO $"
    
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        MOV DX, OFFSET MSG1
        MOV AH, 9
        INT 21H
        
        MOV AH, 1   ; DIGIT DEWAR SOMOY NEGATIVE SIGN ENTER DILEI NEGATIVE LEVEL KAJ KORBE
        INT 21H
        MOV BL, AL
        
        MOV CL, 48 ; TAKING ZERO FOR COMPARISION
       
        CMP BL, CL
        JE ZERO
        JL NEGATIVE
        JG POSITIVE
        
        ZERO:
        MOV DX, OFFSET MSG4
        MOV AH, 9
        INT 21H
        JMP DONE
        
        POSITIVE:
        MOV DX, OFFSET MSG2
        MOV AH, 9
        INT 21H
        JMP DONE
        
        NEGATIVE:
        MOV DX, OFFSET MSG3
        MOV AH, 9
        INT 21H
        JMP DONE
        
        DONE:

RET