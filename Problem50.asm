.MODEL SMALL
.STACK 100H
.DATA 
    STRING01 DB "PRIME$"
    STRING02 DB "NOT PRIME$"
   

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE   
        MOV CX, 9 
        MOV BX, CX
            
       
        MOV DL, 30H 
        START:
        MOV AX, BX 
        
        DIV CL 
        MOV DH, 0
        CMP AH, DH
        JE EQUAL  
        LOOP START 
        JMP SHOW
        
        EQUAL:
        INC DL 
        CMP DL,33H
        JE DISP 
       
        SUB CX, 1 
        CMP CX, 1
        JGE START
        JMP SHOW
       
   
        DISP: 
        LEA DX, STRING02
        MOV AH, 9
        INT 21H   
     
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        JMP EXIT
        
         
        SHOW:
        LEA DX, STRING01
        MOV AH, 9
        INT 21H   
     
        MOV AH, 2
        MOV DL, 0DH
        INT 21H  
        
        EXIT:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 




