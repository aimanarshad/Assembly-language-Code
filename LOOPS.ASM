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

  
    MOV AH, 4CH    
    INT 21H

MAIN ENDP
END MAIN
