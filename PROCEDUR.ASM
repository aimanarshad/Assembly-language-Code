dosseg
.model small
.stack 100h
.data
msg1 db 'Aiman$'
msg2 db 'Arshad$'
msg3 db 'Student$'
msg4 db 'UBIT$'
.code
main proc
mov ax,@data
mov ds,ax

mov dx offset msg1
mov ah,9
int 21h
call enterkey

mov dx,offset msg2
mov ah,9
int 21h
call enterkey

mov dx,offset msg3
mov ah,9
int 21h
call enterkey

mov dx,offset msg4
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp

enterkey proc
mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h
ret 
enterkey endp

end main
