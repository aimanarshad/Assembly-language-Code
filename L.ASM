dosseg
.model small
.stack 100h
.data
var1 db 'aiman$'
.code
main proc
mov cx,3
mov dl,var1

L1:


mov ah,2
int 21h


inc dx

Loop L1

mov ah,4ch
int 21h
main endp
end main
