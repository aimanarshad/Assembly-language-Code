dosseg
.model small
.stack 100h
.data
    triangleLabel db 'Triangle$', 0  ; Text label for triangle
.code
main proc

    ; Set video mode to 13h (320x200, 256 colors)
    mov ax, 13h
    int 10h

    ; Draw triangle
    mov cx, 50           ; Start X position (Base of the triangle)
    mov dx, 150          ; Y position (Base of the triangle)
    mov al, 15            ; Color (white)
    mov ah, 0Ch           ; Plot pixel function
    mov bx, 50            ; Height of the triangle

draw_triangle:
    push cx
    push dx
    mov di, bx

draw_triangle_row:
    int 10h               ; Plot pixel
    inc cx                ; Move to the next pixel in the row
    dec di                ; Decrease column width counter
    cmp di, 0             ; Check if the row is complete
    jnz draw_triangle_row ; Continue drawing until row is done

    pop dx
    pop cx

    dec bx                ; Decrease the width as we go up the triangle
    dec cx                ; Move inward from the left
    inc dx                ; Move up one line
    cmp bx, 0             ; Limit the height of the triangle
    jnz draw_triangle     ; Continue if not done

    ; Display "Triangle" at position (110, 170)
    mov ah, 09h           ; Function to display string
    mov dx, 0110h         ; Coordinates
    mov bx, 0             ; Page number
    mov bp, offset triangleLabel
    int 10h

    ; Wait for key press
    mov ah, 0
    int 16h

    ; Return to text mode
    mov ax, 03h
    int 10h

    ; Exit program
    mov ah, 4Ch
    int 21h

main endp
end main
