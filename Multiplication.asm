.MODEL SMALL
.STACK 100H
.DATA
    ; DEFINE YOUR VARIABLES HERE  
    ; HERE DB MEANING DATA BYTE (BYTE TYPE DATA)
    A DB 10
    B DB 5
    C DB 12

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE  
        ; BYTE MULTIPLICATION 
        ; SOURCE CAN BE REGISTER OR MEMORY LOCATION 
        MOV AL, A
        MOV BL, B
        
        MUL BL  
        ; MUL CAN TAKE VARIABLE(MEMORY LOCATION ) AND REGISTER 
       
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 

