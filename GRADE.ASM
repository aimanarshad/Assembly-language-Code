DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
F DB 'FAIL$'
P DB 'PASS$'
A DB 'GRADE-A$'
B DB 'GRADE-B$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 1            
    INT 21H              

    SUB AL, '0'          

    CMP AL, 5            
    JB FAIL              

    CMP AL, 7
    JB PASS              

    CMP AL, 8            
    JB GRADE_B           

    JMP GRADE_A          

FAIL:
    MOV DX, OFFSET F
    MOV AH, 9            
    INT 21H

    MOV AH, 4CH          
    INT 21H

PASS:
    MOV DX, OFFSET P
    MOV AH, 9           
    INT 21H

    MOV AH, 4CH          
    INT 21H

GRADE_A:
    MOV DX, OFFSET A
    MOV AH, 9            
    INT 21H

    MOV AH, 4CH          
    INT 21H

GRADE_B:
    MOV DX, OFFSET B
    MOV AH, 9            
    INT 21H

    MOV AH,4CH
    INT 21H



MAIN ENDP
END MAIN
