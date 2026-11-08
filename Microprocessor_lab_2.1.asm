;logical task (and, or, xor)   
;101b
;111b
; and 101b ='5'
; or 111b = 7 = '7'
; xor 010 =2 ='2' 


 ;Task 1 
 
 
.model small 
.stack 100h 
.data 

and_msg db "And Result: $"
or_msg db 13,10, "Or Result: $"
xor_msg db 13,10, "Xor Result: $"
mxor_msg db 13,10, "max bit use Xor Result: $"

.code   
   
   
main proc
    mov ax, @data
    mov ds, ax
     
    ; and msg print
    lea dx, and_msg 
    mov ah, 9h
    int 21h
    
    ;and operation
    mov bl, 01111b ;bl =01111b
    and bl, 11000b ;bl =01111b and 11000b = 8
    mov dl, bl   ;dl =8
    add dl, 48  ;ascii convert , '8'
    mov ah, 2h   ;char print
    int 21h      ;interrupt
    ;input: 0-9, output: 0-9
         
    ; or msg print     
    lea dx, or_msg 
    mov ah, 9h
    int 21h 
    
    ;or operation
    mov bl, 001001b ;bl =001001b
    or bl, 000001b ;bl =001001b or 000001b = 9
    mov dl, bl   ;dl =9
    add dl, 48  ;ascii convert , '9'
    mov ah, 2h   ;char print
    int 21h      ;interrupt
    ;input: 0-9, output: 0-9 
    
    
    ;xor msg print 
    lea dx, xor_msg 
    mov ah, 9h
    int 21h
    
    ;xor operation
    mov bl, 000101b ;bl =000101b
    xor bl, 000011b ;bl =000101b xor 000011b = 6
    mov dl, bl   ;dl =6
    add dl, 48  ;ascii convert , '6'
    mov ah, 2h   ;char print
    int 21h      ;interrupt
    ;input: 0-9, output: 0-9   
    
    ;max bit use xor msg print 
    lea dx, xor_msg 
    mov ah, 9h
    int 21h
    
    ;max bit use xor operation
    mov bl, 11111001b ;bl =11111001b
    xor bl, 11110000b ;bl =11111001b xor 11110000b = 9
    mov dl, bl   ;dl =9
    add dl, 48  ;ascii convert , '9'
    mov ah, 2h   ;char print
    int 21h      ;interrupt
    ;input: 0-9, output: 0-9
    
    
    exit: 
    mov ah, 4ch
    int 21h
    
    
    main endp 
end main 