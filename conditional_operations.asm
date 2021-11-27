.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    A DB 8
    B DB 9
    

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE   
        ; CONDITIONAL JUMP  
        ; CMP DESTINATION , SOURCE   
        
        MOV AL, A
        MOV BL, B
        CMP AL, BL      ; COMPARING AL , BL (AL-BL) 
        
        JG IF           ; AL>BL
        SUB AL, 2       ; ELSE 
        JMP EXIT 
        
                   
        
        IF:
        ADD AL, 2       ; AL>BL JUMP  
        JMP EXIT        ; UNCONDITIONAL JUMP TO EXIT BLOCK
        
        
        ;if (a>b)
        ;   a = a+2
        ;else
        ;   a = a-2
        
        ; EXIT TO DOS 
        EXIT:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 




