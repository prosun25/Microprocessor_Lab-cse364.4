; enter higher case : R
; this is you lower case : r  


.model small 
.stack 100h 
.data 

higher db "Enter Higher Case: $"
lower db 13,10, "This Is You Lower Case: $"
newline db 13,10,"$"

.code   
   
   

main proc
     mov ax, @data
     mov ds, ax 
    
     ; higher string print
     lea dx, higher 
     mov ah, 9h 
     int 21h 
     
     ; higher user input
      mov ah, 1h ;user input ascii print 
     int 21h ;interrupt
     ;al
     mov bl, al
     mov ah, 2
     
     ; lower string print
     lea dx, lower 
     mov ah, 9h 
     int 21h
     
     ;lower case convert
     add bl, 32  ; bl = r
     mov dl,bl   ; dl = r
     mov ah, 2h ;char output ascii print 
     int 21h ;interrupt
     
     lea dx, newline
    mov ah, 9h
    int 21h

     
     jmp exit
     
     
     
      exit : 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 