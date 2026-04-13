
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR DB "HELLOWORLD","$"
VOWEL DB "AEIOUaeiou"
RES DB 00H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        LEA SI,STR
        MOV BL,00H
L2:     LODSB
        CMP AL,"$"
        JZ L1
        LEA DI,VOWEL
        MOV CX,000AH
        CLD
        REPNE SCASB
        JNZ L2
        INC BL
        JMP L2
L1:     MOV RES,BL
        HLT
CODE ENDS
END
