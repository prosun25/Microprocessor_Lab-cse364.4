.model small ; 1 code segment + 1 Data segment
.stack 100h ;hex = memory address (256 bytes), stack segment
.data ; data sagment

msg  db "Hello World$";string declare
good db 13,10,"Good Morning$" ; 13,10=new line 

newline db 13,10,"$"

msgplusgood db "Hello World" ,13,10, "good Morning$"
.code ; code segment  

;stack == push,pop,call,ret
;data == input variable + output variable 
;code == whole code
;DS,ES,SS,DS == 16 bit

main proc; start of main fun()
    mov ax, @data; activation of ax
    mov ds, ax; data segment activate
    
    ;AX - Accumulator Register = airthmetic + logical
    ;BS - Base Register = bin, hex, oct, dec, ascii
    ;CX - Counter Register = loop
    ;DX - Data Register = Output Register
    ;All register are 16 bits
    
    ; AX = AH [higher 8 bit] : AL [lower 8 bit] 
    ; BX = BH [higher 8 bit] : BL [lower 8 bit]
    ; CX = CH [higher 8 bit] : CL [lower 8 bit]
    ; DX = DH [higher 8 bit] : DL [lower 8 bit]   
    
    lea dx, msg; load effective address
    mov ah, 9h
    int 21h ; int = interrupt = 21h = service provider     
    
    lea dx, good; load effective address
    mov ah, 9h
    int 21h ; int = interrupt = 21h = service provider 
    
    lea dx, newline
    mov ah, 9h
    int 21h 
    
    lea dx, msgplusgood
    mov ah, 9h
    int 21h                                             
    
    
    Nafi: ; Segment
    mov ah, 4ch
    int 21h;exit
    
    
    main endp; end of main fun()
end main ; end of the whole program