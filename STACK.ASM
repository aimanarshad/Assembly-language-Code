dosseg
.model small
.stack 100h
.data
string db 'aiman$'
.code
main proc

mov ax,@data
mov ds,ax

mov si,offset string

mov cx,5
l1:
mov bx,[si]
push bx
inc si

loop l1

mov cx,5

mov dx,offset string
mov ah,9
int 21h
jmp newLine


newLine:

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h



l2:
pop bx
mov dx,bx

mov ah,2
int 21h

loop l2



mov ah,4ch
int 21h

main endp
end main




