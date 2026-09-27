; Program: Rotate contents of D000H left by one bit
; Add original number with rotated number
; Store two-byte result from D001H onwards

MVI C, 00H         ; C = 00H

LXI H, D000H       ; HL = D000H
MOV A, M           ; A = original number

RLC                ; Rotate A left by one bit
ADD M              ; A = rotated number + original number

JNC SKIP           ; If no carry, skip
INR C              ; C = 01H if carry occurs

SKIP:
INX H              ; HL = D001H
MOV M, A           ; Store result at D001H

INX H              ; HL = D002H
MOV M, C           ; Store carry at D002H

HLT                ; Stop MPU