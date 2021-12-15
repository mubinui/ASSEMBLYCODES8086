.MODEL SMALL
.STACK 100H
.DATA 

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE 
        MOV AX, 10
        MOV BL, 2
        DIV BL  
        
        MOV CX, 0
        MOV DL, 0
        START:
        CMP DL, AL
        JGE END   
        SUB CX,1
        INC DL    
        JMP START
        END:       
         
        ; YOUR CODE ENDS HERE  
        
       
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 



