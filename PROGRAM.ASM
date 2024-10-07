dosseg
.model small
.stack 100h

.data
string1 db 'hello$', 0
string2 db 'hello$', 0
msgEqual db 'Strings are equal.$'
msgNotEqual db 'Strings are not equal.$'

.code
main proc
mov ax, @data
mov ds, ax

; Initialize pointers to the strings
mov si, offset string1
mov di, offset string2

; Compare the strings
cmp_loop:
    mov al, [si]         ; Load a character from string1
    mov bl, [di]         ; Load a character from string2
    cmp al, bl           ; Compare the characters
    jne not_equal        ; Jump if not equal
    test al, al          ; Check if we reached the end of the string
    jz equal             ; If zero, strings are equal
    inc si               ; Move to the next character in string1
    inc di               ; Move to the next character in string2
    jmp cmp_loop         ; Repeat comparison

equal:
    mov dx, offset msgEqual
    mov ah, 9
    int 21h
    jmp end_program

not_equal:
    mov dx, offset msgNotEqual
    mov ah, 9
    int 21h

end_program:
    mov ah, 4Ch
    int 21h

main endp
end main
