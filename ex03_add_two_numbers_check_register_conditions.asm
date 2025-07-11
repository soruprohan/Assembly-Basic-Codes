ORG 100H

MOV AH, 1
INT 21H
MOV BL, AL

MOV Al, 1
INT 21H

ADD BL, AL
SUB BL, 48

MOV DL, BL
MOV AH, 2  
INT 21H

RET                                                                                         