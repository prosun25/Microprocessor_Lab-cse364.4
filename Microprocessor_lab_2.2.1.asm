; enter lower case : r
; this is you higher case : R  


.model small 
.stack 100h 
.data 

lower db "Enter Lower Case: $"
higher db 13,10, "This Is You Higher Case: $"
newline db 13,10,"$"

.code   
   
   

main proc
     mov ax, @data
     mov ds, ax 
    
     ; lower string print
     lea dx, lower 
     mov ah, 9h 
     int 21h 
     
     ; lower user input
      mov ah, 1h ;user input ascii print 
     int 21h ;interrupt
     ;al
     mov bl, al
     mov ah, 2
     
     ; higher string print
     lea dx, higher 
     mov ah, 9h 
     int 21h
     
     ;higher case convert
     sub bl, 32  ; bl = R
     mov dl,bl   ; dl = R
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