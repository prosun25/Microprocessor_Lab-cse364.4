.model small 
.stack 100h 
.data 
.code   


main proc
    mov ax, @data
    mov ds, ax 
    
    ;ax,bx,cx,dx
    mov ax, 0; ax=4
    mov dx , 9; dx=3
    add dx, ax; dx= 4+3=7 
    ;sub dx,ax
    ;ascii convert  
    ;add dx,'0'
    ;add dx, 48
    ; add dx, 30h
     
     
    mov ah, 2h; character print
    int 21h; interrupt
    
    
    exit: ; Segment
    mov ah, 4ch
    int 21h
    
    
    main endp ; end of procedure
end main ; whole program