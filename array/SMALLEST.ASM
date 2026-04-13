

                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
ARR       DB 05H, 09H, 02H, 0AH, 01H
N         DB 05H
SMALLEST  DB 05H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE, DS:DATA
        MOV AX, DATA
        MOV DS, AX
        LEA SI, ARR
        MOV CL, N
        DEC CL

        MOV AL, [SI]

L1:
        INC SI
        CMP AL, [SI]
        JC  L2
        MOV AL, [SI]

L2:
        LOOP L1

        MOV SMALLEST,AL

        HLT

CODE ENDS
END



