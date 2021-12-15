.MODEL SMALL
.STACK 100H
.DATA 
   

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE  
        
        ; FIRST INPUT  50
        ; SECOND INPUT  10
        ; NEED TO ADD THE NUMBERS DIVISIBLE BY 3
        
        ; FINDING THE RANGE 
        
        MOV DX, 10 
        MOV BX, 2
       
        MOV BX, 0
        
        
        
        START:  
        CMP DX, 2
        JLE END
        MOV AX, DX
        MOV CL, 3
        DIV CL 
        MOV CL, 0
        SUB DX, 1
     
        CMP AH, CL
        JE EQUAL 
        JMP START
        END:
        JMP SHOW 
        JMP EXIT 
        
        
        EQUAL:
        ADD BX, DX
        ADD BX, 1
        JMP START
        
        SHOW:
        MOV DX, BX 
        MOV AH, 2
        INT 21H
 
        EXIT:
       
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 




