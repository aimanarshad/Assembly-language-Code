DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
VAR1 DB 'MY NAME IS$'
VAR2 DB 'AIMAN$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Print 'START'
    MOV DX, OFFSET VAR1
    MOV AH, 9
    INT 21H

    ; Print newline (CRLF)
    MOV DL, 0DH  ; Carriage return
    MOV AH, 2
    INT 21H
    MOV DL, 0AH  ; Line feed
    MOV AH, 2
    INT 21H

    ; Print 'END'
    MOV DX, OFFSET VAR2
    MOV AH, 9
    INT 21H

    ; Terminate program
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
