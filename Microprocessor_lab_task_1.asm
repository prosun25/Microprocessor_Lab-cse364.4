
 ;Task 1 
 
 ;multiplicand =4
 ;multiplier=2
 ;product =8


.model small 
.stack 100h 
.data 

multiplicand db "Enter Multiplicand: $"
multiplier db 13,10, "Enter Multiplier: $"
product db 13,10, "Your Product: $"

.code   
   
   
main proc
    mov ax, @data
    mov ds, ax 
    
          
         
    lea dx, multiplicand
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h
    sub al, 30h          
    mov bl, al          
    
    lea dx, multiplier
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h
    sub al, 30h          
    
    
    mul bl               
    mov cl, al           
    
    
    lea dx, product
    mov ah, 9h
    int 21h
    
    
    mov dl, cl
    add dl, 30h          
    mov ah, 2h
    int 21h
    
    
    
    
    exit: 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 