DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
    

.CODE
MAIN PROC
    

    MOV AL, 3      
    MOV BL, 6       
    OR AL, BL       

   
    ADD AL, '0'    

    
    MOV AH, 2H
    MOV DL, AL      
    INT 21H    
    
MOV CX,10

MOV DX,48



L1:

MOV AH,2

INT 21H

ADD DX,1


LOOP L1


  
    MOV AH, 4CH    
    INT 21H

MAIN ENDP
END MAIN
