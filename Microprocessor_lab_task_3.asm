;logical task (and, or, xor , not)   
;101b
;111b
; and 101b ='5'
; or 111b = 7 = '7'
; xor 010 =2 ='2'
; not 000 =0 ='0' 


 ;Task 3 
 
 
.model small 
.stack 100h 
.data 

and_msg db "And Result: $"
or_msg db 13,10, "Or Result: $"
xor_msg db 13,10, "Xor Result: $"
not_msg db 13,10, "Not Result: $"

.code   
   
   
main proc
    mov ax, @data
    mov ds, ax
     
    lea dx, and_msg 
    mov ah, 9h
    int 21h
  
    mov bl, 101b 
    and bl, 111b 
    mov dl, bl   
    add dl, 48  
    mov ah, 2h   
    int 21h      
    
         
    lea dx, or_msg 
    mov ah, 9h
    int 21h
  
    mov bl, 101b 
    or bl, 111b 
    mov dl, bl   
    add dl, 48  
    mov ah, 2h   
    int 21h
    
    lea dx, xor_msg 
    mov ah, 9h
    int 21h
  
    mov bl, 101b 
    xor bl, 111b 
    mov dl, bl   
    add dl, 48  
    mov ah, 2h   
    int 21h
        
    
    lea dx, not_msg 
    mov ah, 9h
    int 21h
  
    mov bl, 111b 
    not bl 
    mov dl, bl   
    add dl, 56  
    mov ah, 2h   
    int 21h
    
    
    exit: 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 