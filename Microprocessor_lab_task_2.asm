  
  ;task 2
  
  ;dividend =9
  ;divisor =5 | 0
  ;quotient =1
  

.model small 
.stack 100h 
.data 

dividend db "Enter Dividend: $"
divisor db 13,10, "Enter Divisor: $"
quotient db 13,10, "Your Quotient: $"
remainder db 13,10, "Your Remainder: $"
error db 13,10, "Error: undefined! $"

.code   
   
   

main proc
     mov ax, @data
     mov ds, ax 
    
     
     lea dx, dividend  
     mov ah, 9h 
     int 21h  
     

     mov ah,1h
     int 21h
     sub al,30h
     mov bl, al
     
     lea dx, divisor  
     mov ah, 9h 
     int 21h   
     
     
     mov ah,1h
     int 21h
     sub al,30h
     mov bh, al
     
    
     cmp bh, 0
     je undifine
     
      
     lea dx, quotient  
     mov ah, 9h 
     int 21h  
     
          
     mov al,bl
     xor ah,ah
     div bh
     mov ch,ah 
     mov dl,al  
     add dl,'0'
     mov ah, 2h  
     int 21h
     
     lea dx, remainder 
     mov ah, 9h 
     int 21h 
    
     mov dl, ch          
     add dl, '0'
     mov ah, 2h
     int 21h  
     
     jmp exit
     
     undifine:
      
     lea dx, error  
     mov ah, 9h 
     int 21h  
    
    
    
    exit: 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 