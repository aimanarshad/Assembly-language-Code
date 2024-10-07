dosseg
.model small
.stack 100h
.data
var1 db ?
var2 db ?
.code
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov bl,al
mov var1,bl
mov dl,var1


mov ah,1
int 21h
mov var2,al

add var1,var2
mov dl,var1
sub dl,48
mov ah,2
int 21h


mov ah,4ch
int 21h
main endp
end main
