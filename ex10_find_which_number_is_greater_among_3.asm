;if(num1>num2)
;{
;    if(num1>num3)
;        display num1
;}
;else_if(num2>num3)
;    display num2
;else
;    display num3
ORG 100H
.MODEL SMALL
.DATA
     MSG1 DB 10, 13, "ENTER FIRST DIGIT : $"
     MSG2 DB 10, 13, "ENTER SECOND DIGIT : $"
     MSG3 DB 10, 13, "ENTER THIRD DIGIT : $"
     MSG4 DB 10, 13, "THE LARGEST DIGIT : $"
     VAR1 DB ?
     VAR2 DB ?
     VAR3 DB ?
.CODE                                     
    MAIN PROC
       MOV AX, @DATA
       MOV DS, AX
       
       MOV DX, OFFSET MSG1   ; PRINT MSG
       MOV AH, 9
       INT 21H
       MOV AH, 1
       INT 21H
       MOV VAR1, AL  ; STORE
       
       MOV DX, OFFSET MSG2  ; PRINT MSG
       MOV AH, 9
       INT 21H
       MOV AH, 1
       INT 21H
       MOV VAR2, AL  ; STORE
       
       MOV DX, OFFSET MSG3   ; PRINT MSG
       MOV AH, 9
       INT 21H
       MOV AH, 1
       INT 21H
       MOV VAR3, AL   ; STORE
       
       MOV DX, OFFSET MSG4
       MOV AH, 9
       INT 21H
       
       MOV BL, VAR1  ; IF CONDITION
       CMP BL, VAR2
       JG NUMBER1  ; NUMBER1 BORO NUM1 AND NUM2 ER MAJHE
       
       MOV BL, VAR2 ; EIKHANE ASCHE TARMANE NUMBER 1 BORO NAA ;ELSE_IF CONDITION
       CMP BL, VAR3
       JG DISPLAY2
       JMP DISPLAY3
       
       NUMBER1: ; IF ER VITORER IF
       CMP BL, VAR3  ; TAI JUST NUMBER 3 ER SATHE CHECK
       JG DISPLAY1
       
       DISPLAY1:  ; DISPLAY NUMBER 1
       MOV DL, VAR1
       JMP DONE ; BREAK CONDITION
       
       DISPLAY2:  ; DISPLAY NUMBER 2
       MOV DL, VAR2
       JMP DONE ; BREAK CONDITION
       
       DISPLAY3:  ; DISPLAY NUMBER 3
       MOV DL, VAR3

       DONE:
       MOV AH, 2
       INT 21H

RET                                                                                                                                           