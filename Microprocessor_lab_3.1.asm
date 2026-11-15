
;largest
;input three numbers : 3, 4 ,3
;largest number :4


.model small 
.stack 100h 
.data 

enter db 13, 10, "Enter three number: $"
print db 13, 10, "Largest Number: $"



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
     int 21h
     mov cl, al ;cl = 3rd number
     
     ;comparisom 1 & 2
     cmp bl,bh
     jge large1 ;jump if greater or equal
     
     ;else comparisom 2 & 3
     large2: 
     cmp bh,cl 
     jge large3
     
     ;else
  
     lea dx, print 
     mov ah, 9h 
     int 21h
     
     
     ;print largest value
     mov dl,cl
     mov ah, 2h
     int 21h 
     
      jmp exit
      
     ;lifo 
     
     large3:
     lea dx, print 
     mov ah, 9h 
     int 21h
     
     
     ;print largest value
     mov dl,bh
     mov ah, 2h
     int 21h 
     
     jmp exit
     
     large1:
     
     cmp bl, cl; comparisom 1 & 3
     jge large4
     
     ;elsa
     
      lea dx, print 
     mov ah, 9h 
     int 21h
     
     
     ;print largest value
     mov dl,cl
     mov ah, 2h
     int 21h
     
     jmp exit  
     
     
     large4:
     
     lea dx, print 
     mov ah, 9h 
     int 21h
     
     
     ;print largest value
     mov dl,bl
     mov ah, 2h
     int 21h 
     jmp exit
     
     
    exit : 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 