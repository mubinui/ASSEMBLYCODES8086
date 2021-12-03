.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    STRING01 DB "INPUT MONTH NUMBER: $"
    STRING02 DB "31$"  ; JANUARY
    STRING03 DB "28$"  ; FEBRUARY
    STRING04 DB "31$"  ; MARCH
    STRING05 DB "30$"  ; APRIL
    FIRST DB ?
      

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
        SUB AL, 30H
        MOV BL, AL ; BL = FIRST INPUT  
        
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
        

        
        MOV CL, 1    ; FOR JANUARY
        CMP BL, CL  
        JE  JANUARY 
        
        MOV CL, 2
        CMP BL, CL   ; FOR FEBRUARY
        JE FEBRUARY
        CMP BL, CL  
        
        MOV CL, 3     ; FOR MARCH 
        CMP BL, CL 
        JE MARCH 
        
        MOV CL, 4     ; FOR APRIL 
        CMP BL, CL 
        JE APRIL 
        JMP EXIT
        
        
           
        
        
        JANUARY:
        LEA DX, STRING02
        MOV AH, 9
        INT 21H  
        MOV DL, BL
        MOV AH, 2
        INT 21H
        JMP EXIT
        
        
        FEBRUARY:
        LEA DX, STRING03
        MOV AH, 9
        INT 21H  
        MOV DL, BL
        MOV AH, 2
        INT 21H
        JMP EXIT 
        
        
        MARCH:
        LEA DX, STRING04
        MOV AH, 9
        INT 21H  
        MOV DL, BL
        MOV AH, 2
        INT 21H
        JMP EXIT  
        
        APRIL:
        LEA DX, STRING05
        MOV AH, 9
        INT 21H  
        MOV DL, BL
        MOV AH, 2
        INT 21H
        JMP EXIT
         
         
         
         
        EXIT:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 







