.MODEL SMALL
.STACK 100H
.DATA    
    msg db '*********', 0dh, 0ah, '$'  
   msg2 db '*       *', 0dh, 0ah, '$'


.CODE

MAIN PROC    
    mov ax, @data
    mov ds, ax
    
  label1:  
    mov ah, 1
    int 21h
    mov bl, al
    mov ah, 2
    mov dl, '-'
    int 21h
    mov dl, '1'
    int 21h
    mov dl, bl
    sub dl, 'A'  
    add dl, '0'
    int 21h   
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    jmp label1

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN  

    
    
;    mov ah, 1
;    int 21h
;    mov dl, al
;    sub dl, 20h
;    mov ah, 2
;    int 21h
;    mov dl, 0dh
;    int 21h
;    mov dl, 0ah
;    int 21h

