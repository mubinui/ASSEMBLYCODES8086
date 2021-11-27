.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    STRING01 DB "ENTER A:$"
    STRING02 DB "ENTER B:$"
    STRING03 DB "A IS THE GREATEST$"
    STRING04 DB "B IS THE GREATEST$" 
    STRING05 DB "A AND B ARE EQUAL$"
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
        MOV CL, AL ; CL = B
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
        
        ; EQUALITY CHECK 
        CMP BL, CL ; COMPARING A AND B 
        JE EQUAL       ; IF EL==CL
        JG GREATER     ; IF BL>CL
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
        
        LEA DX, STRING04     ; DISPLAYING STRING 04 ELSE
        MOV AH, 9
        INT 21H 
        JMP EXIT
        
        
        GREATER:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
     
        LEA DX, STRING03    ; DISPLAYING STRING 03
        MOV AH, 9
        INT 21H 
        JMP EXIT  
        
        
        EQUAL:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
        
        LEA DX, STRING05   ;DISPLAYING STRING 05
        MOV AH, 9
        INT 21H  
        
         
        EXIT:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 




