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
    
    
    MOV RESULT, AL   ; Store the result in the RESULT variable

    ; Convert result to ASCII and print
    ; Note: This example assumes the result is a single digit (0-9)
    ADD AL, '0'      ; Convert number to ASCII character (e.g., 7 + '0' = '7')

    ; Print the result
    MOV AH, 02H      ; DOS function to display character
    MOV DL, AL       ; Load the ASCII result into DL
    INT 21H          ; Call DOS interrupt to print

    ; Print a newline for clarity
    MOV DL, 0DH      ; Carriage return
    INT 21H
    MOV DL, 0AH      ; Line feed
    INT 21H

    ; Terminate the program
    MOV AH, 4CH      ; DOS function to terminate program
    INT 21H

MAIN ENDP
END MAIN
