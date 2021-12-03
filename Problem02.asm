.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    STRING01 DB "ENTER FIRST NUMBER :$"
    STRING02 DB "ENTER SECOND NUMBER :$"
    STRING03 DB "RESULT IS : $"
    STRING04 DB "DIVISIBLE $"
    STRING05 DB "NOT DIVISIBLE $"
    ZERO DB 0
    
    A DB ?
    B DB ?   

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE  
        
        ; INPUT A
        LEA DX, STRING01
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H 
        SUB AL, 30H
        MOV BL, AL ; BL = A
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
        
        ;INPUT B 
        LEA DX, STRING02
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H 
        SUB AL, 30H
        MOV CL, AL ; CL = B
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H   
        
        ;MULTIPLICCATION   
        MOV AL, CL 
        MUL BL
    
        MOV BL, AL
        
        ;DISPLAY RESULT 
        LEA DX, STRING03
        MOV AH, 9
        INT 21H   
     
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
       
        MOV DL, BL   
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
        
        ;DIVISIBLITY CHECKING 4 
        MOV AL, BL
        MOV CL, 4
        DIV CL 
        MOV CL, ZERO
        
        
        CMP AH, CL
        JE EQUAL 
        JMP SHOW
        JMP EXIT
        
        ;DIVISIBLITY CHECKING 6
        EQUAL:
        MOV AL, BL
        MOV CL, 6
        DIV CL 
        MOV CL, ZERO
        
        CMP AH, CL
        JE DISPLAY 
        JMP SHOW
        JMP EXIT
        
        DISPLAY:
        LEA DX, STRING04
        MOV AH, 9
        INT 21H 
        JMP EXIT
        
        SHOW:
        LEA DX, STRING05
        MOV AH, 9
        INT 21H
       
        EXIT:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 


