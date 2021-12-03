.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    STRING01 DB "FIRST SIDE : $"
    STRING02 DB "SECOND SIDE : $"
    STRING03 DB "THIRD SIDE : $"
    STRING04 DB "FOURTH SIDE : $" 
    STRING05 DB "VALID SQUARE  $"
    STRING06 DB "INVALID SQUARE$"
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
        JE EQUAL
        JMP INVALID       ; FIRST INPUT IS EQUAL TO SECOND INPUT   
        
        
        ;THIRD INPUT (IF BL>CL) 
     
        
        EQUAL: 
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
        JE EQUAL01
        JMP INVALID
        
        ; FOURTH INPUT 
        
        EQUAL01:
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
        JE EQUAL03
        JMP INVALID
        JMP EXIT
        
        INVALID:
        LEA DX, STRING06
        MOV AH, 9
        INT 21H  
        MOV DL, CL
        MOV AH, 2
        INT 21H
        
        JMP EXIT 
        EQUAL03:
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




