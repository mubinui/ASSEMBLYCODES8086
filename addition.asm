.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE 

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE  
        
        ; Adding two values 
        ; mov reg value 
        mov dx, 6
        mov cx, 11
        ; add operation 
        ; after the operation the value will store in dx 
        ADD cx, dx
        
        
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 



