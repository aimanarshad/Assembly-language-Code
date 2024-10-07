DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
    VAR1 DB 3        
    VAR2 DB 6        
    RESULT DB ?      

.CODE
MAIN PROC
 
    MOV AL, VAR1     
    MOV BL, VAR2     

   
    OR AL, BL        
    
    
    MOV RESULT, AL   


    ADD AL, ‘0’
   
    MOV AH, 2H      
    MOV DL, AL       
    INT 21H          

    MOV DL, DH
    INT 21H
    MOV DL, AH     
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

