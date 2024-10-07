dosseg
.model small
.stack 100h
.data
fn db 'aiman$'
ln db 'arshad$'
.code
main proc
mov ax,@data
mov ds,ax

mov ax,offset fn

mov bx,offset ln

push ax
push bx

pop ax
pop bx


mov dx,ax
mov ah,9
int 21h

mov dx,bx
mov ah,9
int 21h



mov ah,4ch
int 21h

main endp
end main
