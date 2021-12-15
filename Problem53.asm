.MODEL SMALL
.STACK 100H
.DATA 
    STRING01 DB "MULTIPLICATION PRESS {1} DIVISION PRESS {2} $"
    
   

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE 
         ; FIRST INPUT
        LEA DX, STRING01
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV BL, AL
        SUB BL, 30H  
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
                  
                  
        CMP BL, 1
        JE MULTIPLICATION
        CMP BL, 2
        JE DIVISION
        JMP EXIT
        
        DIVISION:
        MOV BX , 8       ; LARGE NUMBER
        MOV DX , 2 
        MOV CX, DX         ; SMALLER NUMBER  
        
         
        START:
        CMP BX, CX
        JE CAL
        CMP BX, CX
        JLE END  
        SUB BX, CX
        ADD DX, CX    
        JMP START
        END:    
        MOV DX,BX
        
        MOV AH, 2
        INT 21H
        JMP EXIT
        
        
        MULTIPLICATION:
        MOV BX, 8       ; LARGE NUMBER
        MOV DX, 2        ; SMALLER NUMBER
        MOV CX, DX
        MOV DX, 0        
        
        START_01:
        ADD DX,BX 
        LOOP START_01
        
        MOV AH, 2
        INT 21H  
        JMP EXIT
        
        
        
        CAL:
        MOV DX, 0
        JMP EXIT
   
        ; YOUR CODE ENDS HERE
        EXIT:
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 




