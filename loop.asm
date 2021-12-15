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
        ; THERE ARE THREE PARTS IN A LOOP 
        ; INITIALIZATION 
        ; INCREMENT/DECREMENT
        ; EXPLICIT/IMPLICIT LOOP 
        ; EXPLICIT -> I NEED TO CONTROL THIS MENUALLY 
        ; EXPLICIT
        MOV AH, 2
        MOV DL, 30H  ; 30H MEANING 0
        
        START:
        CMP DL, 35H ; 35H MEANING 5
        JGE END   ; IF DL>=5 THEN THE LOOP WILL END 
        INT 21H
        INC DL    ; INCREMENTING DL
        JMP START
        END:      ; ENDING THE LOOP 
        
        ; IMPLICIT LOOPING 
        MOV CX, 5  ; IT WILL RUN FOR 5 TIMES I-- OPERATION RUN UNTIL 0
        MOV AH,2 
        MOV DL, 30H 
        START_01:
        INT 21H
        INC DL        ; NOT USING FOR INCREMENTING THE LOOP 
        LOOP START_01 ; CONTER REGISTER CX 
        
        EXIT:
        ; YOUR CODE ENDS HERE
        
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
    END MAIN 



