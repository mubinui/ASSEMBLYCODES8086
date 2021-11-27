.MODEL SMALL
.STACK 100H
.DATA
    ;DEFINE YOUR VARIABLES HERE  
    A DB "HELLO FUTURE$"
    

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ; YOUR CODE STARTS HERE
        ; INPUT AND OUTPUT 
        ; SINGLE INPUT CHAR 
        
        MOV AH, 1  ; SINGLE INPUT FROM INPUT   
         
        INT 21H    ; INVOKING INPUT
         
        
        ; INPUT WILL AUTOMETICALLY SAVE INTO AL  
        ; OUTPUT WILL AUTOMETICALLY SAVE INTO DL 
        
        ; SHIFTING THE CURSOR TO THE LEFTMOST 
        ; CARRIAGE RETURN 
        MOV BL, AL  ; SAVING THE OUTPUT TO DL  
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        
        
        
        MOV DL, BL
        ; SINGLE OUTPUT CHAR  
        MOV AH, 2  
        INT 21H
        MOV DL, 0DH ; CARRIAGE RETURN MOVING THE CURSOR
        INT 21H     ; INTERRUPT 
        
        MOV DL, 0AH ; LINE FEED 
        INT 21H 
        
        ; STRING OUTPUT
        LEA DX, A    ; LOAD EFFECTIVE ADDRESSING  
        MOV AH, 9
        INT 21H   
        
       
        
        
        
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 




