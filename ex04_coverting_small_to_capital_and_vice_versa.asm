ORG 100H

MOV AH, 1  ; small letter input
INT 21H
MOV BL, AL
SUB BL, 32 ; eikhane small letter theke capital e convert korlam

MOV AL, 1  ; this time taking another input and initializing it to AL
INT 21H
ADD AL, 32 ; eikhane capital letter theke small e convert korlam
MOV CL, AL ; AL register e jinispati rakha dangerous

MOV DL, BL
MOV AH, 2  
INT 21H
MOV DL, CL
MOV AH, 2
INT 21H

RET                                                                                         