.model small 
.stack 100h 
.data 

msg db "Hi ! My name is nafi." ,13,10, "good Morning every one" ,13,10, "Today my first Microprocessor Lab" ,13,10, "Our teacher is Radiathun Tasnia" ,13,10, "Today we learn 8086 programming" ,13,10, "We are performing experiment number one" ,13,10, "Enjoy the lab session" ,13,10, "Goodbye$" 

.code   


main proc
    mov ax, @data
    mov ds, ax 
    
    lea dx, msg
    mov ah, 9h
    int 21h 
    
    Nafi: ; Segment
    mov ah, 4ch
    int 21h;exit
    
    
    main endp
end main 