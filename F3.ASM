dosseg
.model small
.stack 100h
.data
.code
main proc
mov ah,6
mov al,10

mov bh,11110000b
mov ch,0
mov cl,0

mov dh,12
mov dl,58
int 10h

mov ah,6
mov al,10

mov bh,10110000b
mov ch,0
mov cl,0

mov dh,80
mov dl,10
int 10h

mov ah,6
mov al,10

mov bh,10010000b
mov ch,0
mov cl,0

mov dh,77
mov dl,33
int 10h

mov ah,6
mov al,10

mov bh,10010000b
mov ch,0
mov cl,0

mov dh,77
mov dl,33
int 10h

mov ah,6
mov al,10

mov bh,11100000b
mov cl,0
mov ch,0

mov dh,99
mov dl,11
int 10h

mov ah,6
mov al,10

mov bh,11100000b
mov cl,0
mov ch,0

mov dh,99
mov dl,11
int 10h

mov ah,4ch
int 21h

main endp
end main
