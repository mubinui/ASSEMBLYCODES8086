.MODEL SMALL
.STACK 100H
.DATA
    ; DEFINE YOUR VARIABLES HERE
    ; DW MEANS DATA WORD 
    A DW 100
    B DW 100

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE   
        ; WORD MULTIPLICATION 
        ; HIGHER 16 BIT SAVED IN DX
        ; LOWER 16 BIT SAVED IN AX   
        
        MOV AX, A
        MUL B
        ; ADDITION
        
        MOV A, AX
        ADD AX, B
        
        
     
        
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 



