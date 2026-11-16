;task: 5

;Smallest
;input four numbers : 3, 4 ,3 ,4
;Smallest number :3


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
     int 21h
     mov cl, al ;cl = 3rd number
     int 21h
     mov ch, al ;ch = 4th number
     
     
     cmp bl,bh
     jle small1
     mov bl,bh 
     
     
     small1:
     cmp cl,ch 
     jle small2
     mov cl,ch
     
     
     small2:
     cmp bl,cl
     jle result
     mov bl,cl
     
     
     result:
     lea dx, print 
     mov ah, 9h 
     int 21h
     
          
     mov dl,bl
     mov ah, 2h
     int 21h 
     
      jmp exit
         
     
    exit : 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 