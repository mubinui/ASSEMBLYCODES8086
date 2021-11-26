.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    A DW 13 ;DIVIDENT 
    

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE 
        ; 8 BIT QUOTIENT WILL BE IN AL
        ; 8 BIT REMINDER WILL BE IN AH  
        MOV AX, A  ; DIVIDENT SHOULD BE IN AX 
        MOV BL, 5  ; DIVISOR SHOULD BE IN ANOTHER REGISTER
        DIV BL     ; A/5 = 2  AL -> 2   AH -> 3  
        
        ; IN CASE OF 32 BIT DIVISION HIGHER 4 BYTE IN DX
        ;                            LOWER  4 BYTE IN AX 
        
        
      
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 
