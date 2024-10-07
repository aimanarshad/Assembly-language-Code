dosseg
.model small
.stack 100h
.data
msg db 'enter no$'
ev db 'even$'
od db 'odd$'
.code
main proc
mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,9
int 21h

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

mov ah,1
int 21h

mov bl,2
div bl
cmp ah,0
je evens

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

mov dx,offset od
mov ah,9
int 21h

mov ah,4ch
int 21h

evens:
mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

mov dx,offset ev
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
