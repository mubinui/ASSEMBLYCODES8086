.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    str_1 DB "FIRST INPUT : $"
    STRING02 DB "SECOND INPUT : $"
    STRING03 DB "THIRD INPUT : $"
    STRING04 DB "FOURTH INPUT : $" 
    STRING05 DB "THE MINIMUM NUMBER = $"
    FIRST DB ?
    SECOND DB ?
    THIRD DB ?
    FOURTH DB ?   

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
        MOV BL, AL ; BL = FIRST INPUT 
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
        
        ;SECOND INPUT
        LEA DX, STRING02
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV CL, AL ; CL = SECOND INPUT 
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H      
        
        ; FIRST CHECKING
        CMP BL, CL  
        JL LESSER
        JG GREATER        ; FIRST INPUT IS LESS THAN THE SECOND INPUT    
        
        
        ;THIRD INPUT (IF BL>CL) 
        GREATER:
        LEA DX, STRING03
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV BL, AL ; CL = 3RD INPUT 
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
        JMP CHECKING  
        
        LESSER: 
        LEA DX, STRING03
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV CL, AL ; BL = 3RD TH INPUT 
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
        JMP CHECKING
          
        CHECKING:
        CMP BL, CL  ; COMPARING LAST INPUT WITH 3RD INPUT 
        JL LESSER01
        
        ; FOURTH INPUT 
        LEA DX, STRING04
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV BL, AL ; CL = 3RD INPUT 
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
        JMP CHECKING_01 
        
        LESSER01:
        LEA DX, STRING04
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV CL, AL ; BL = 3RD TH INPUT 
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H 
        JMP CHECKING_01 
        
        CHECKING_01:
        CMP BL, CL
        JL LESSER_03 
        
        LEA DX, STRING05
        MOV AH, 9
        INT 21H  
        MOV DL, CL
        MOV AH, 2
        INT 21H
        
        JMP EXIT 
        LESSER_03:
        LEA DX, STRING05
        MOV AH, 9
        INT 21H  
        MOV DL, BL
        MOV AH, 2
        INT 21H
         
        EXIT:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 




