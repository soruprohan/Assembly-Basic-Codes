INCLUDE 'EMU8086.INC'
ORG 100H
.MODEL SMALL
.DATA
    MSG1 DB 10, 13,"ENTER A DIGIT(0-9) : $"
    RESULT1 DB 10, 13,"YOU HAVE ENTERED AN EVEN DIGIT$"
    RESULT2 DB 10, 13,"YOU HAVE ENTERED AN ODD DIGIT$"
.CODE
    MAIN PROC
        PRINT "A SIMPLE ASSEMBLY PROGRAM TO CHECK ODD EVEN"
        MOV AX, @DATA
        MOV DS, AX
        
        MOV DX, OFFSET MSG1
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        
        MOV BL, 2
        DIV BL
        
        CMP AH, 0 ; AH E REMAINDER JOMA THAKE R AL E QUOTIENT
        JE EVEN
        JMP ODD
        
        EVEN:
        MOV DX, OFFSET RESULT1
        JMP DONE
        
        ODD:
        MOV DX, OFFSET RESULT2
        
        DONE:
        MOV AH, 9
        INT 21H
        
RET