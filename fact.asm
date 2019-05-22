assume cs: code, ds: data
data segment
    n db 5
    res db ?
data ends

code segment
start:
    mov ax, data
    mov ds, ax
    
    mov al, n
    call fact

    mov ah, 4ch
    int 21h

fact proc
    cmp al, 00h; Returning value.Base statement
    je zero
    push ax;Everytime push the value and decremnent it
    dec al
    call fact;Recursion
    pop ax
    mul res
    mov res, al
    ret
zero:
    mov res, 01h;If the value is 0 then factorial musr be 1
    ret
fact endp
code ends
end start