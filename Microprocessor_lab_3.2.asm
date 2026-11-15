         
;largest
;input two numbers : 3, 4 
;Smallest number :3

; hw
;enter : 9090
;Smallest number :0


.model small 
.stack 100h 
.data 

enter db 13, 10, "Enter three number: $"
print db 13, 10, "Smallest Number: $"



.code   
   
   

main proc
     mov ax, @data
     mov ds, ax 
     
     lea dx, enter 
     mov ah, 9h 
     int 21h 
     
     
     ;input
     mov ah, 1h 
     int 21h
     mov bl,al ;bl = 1st number
     int 21h
     mov bh, al ;bh = 2nd number
     
     
     ;comparisom 1 & 2
     cmp bl,bh
     jle small 
     
     
     
     ;else
  
     lea dx, print 
     mov ah, 9h 
     int 21h
     
     
     ;print Smallest value
     mov dl,bh
     mov ah, 2h
     int 21h 
     
      jmp exit
     
     
     
     
 small:
 lea dx, print 
     mov ah, 9h 
     int 21h
     
     
     ;print Smallest value
     mov dl,bl
     mov ah, 2h
     int 21h
     
     jmp exit
     
    exit : 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 