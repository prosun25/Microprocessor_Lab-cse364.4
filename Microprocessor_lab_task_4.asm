
; Task:4


.model small 
.stack 100h 
.data 

enter      db "Enter an alphabet: $"
show_lower db 13, 10, "This alphabet is lowercase. :)$"
show_higher db 13, 10, "This alphabet is uppercase. :)$"
lower      db 13, 10, "This is your lowercase letter: $"
higher      db 13, 10, "This is your uppercase letter: $"
newline    db 13, 10, "$"


.code   
   
   

main proc
     mov ax, @data
     mov ds, ax 
    
 
  start : 
  
     
     
     lea dx, enter 
     mov ah, 9h 
     int 21h
          
     mov ah, 1h 
     int 21h 
     mov bl, al
     mov ah, 2  
     
     
     cmp bl, 97         
    jae Lower_Case  
     
     
     lea dx, newline
     mov ah, 9h
     int 21h 
     
     lea dx, show_higher 
     mov ah, 9h 
     int 21h
     
     lea dx, lower 
     mov ah, 9h 
     int 21h
     
     
     add bl, 32  
     mov dl,bl   
     mov ah, 2h  
     int 21h 
     
     lea dx, newline
     mov ah, 9h
     int 21h
     
     lea dx, newline
     mov ah, 9h
     int 21h 
    
    jmp start  

    
    Lower_Case:
    
     lea dx, newline
     mov ah, 9h
     int 21h
    
     lea dx, show_lower 
     mov ah, 9h 
     int 21h
     
     lea dx, higher 
     mov ah, 9h 
     int 21h
     
     
     sub bl, 32  
     mov dl,bl   
     mov ah, 2h  
     int 21h 
     
     lea dx, newline
    mov ah, 9h
    int 21h
    
    lea dx, newline
     mov ah, 9h
     int 21h
    
    jmp start 
     
     
     
     
    exit : 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 