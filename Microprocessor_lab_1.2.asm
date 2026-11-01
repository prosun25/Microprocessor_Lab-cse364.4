  
  ;ah=9h [str],ah=1h[user input],ah= 2h[out put], 
    ;h1
  ; home work
  ; multiplicand =4
  ; multiplier=2
  ;product =8
  
  ;h2 
  
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
   
   
     ;case insensitive, indentation not mind
     ;ascii, pattern= mind

main proc
    mov ax, @data
    mov ds, ax 
    
     
     
     ;str print, load effective address
     lea dx, dividend ; str load 
     mov ah, 9h ;str print
     int 21h  ;interrupt
     
     ;dividend user input
     mov ah,1h;user input
     int 21h; interrupt
     ;al=by default user input taker
     ;ascii
     sub al,30h; decimal convert
     mov bl, al; bl=dividend
     
     lea dx, divisor ; str load 
     mov ah, 9h ;str print
     int 21h  ;interrupt 
     
     ;divisor user input
     mov ah,1;user input
     int 21h; interrupt
     ;al=by default user input taker
     ;ascii
     sub al,30h; decimal convert
     mov bh, al; bl=divisor
     
     ;corner case
     cmp bh, 0
     je undifine; jump if equal
     
      ;quotient str print
      lea dx, quotient ; str load 
     mov ah, 9h ;str print
     int 21h  ;interrupt
     
     ;else
          
     mov al,bl; quotient store  
     xor ah,ah; ah= remainder = memory clear
     div bh ;divisor 
     mov dl,al ; al = quotient 
     add dl,'0'; ascii convert
     mov ah, 2h ;char print 
     int 21h ;interrupt 
     
     jmp exit
     
     undifine: ; segment
     lea dx, error ; str load 
     mov ah, 9h ;str print
     int 21h  ;interrupt 
    
    
    
    
    
    
    
    exit: 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 