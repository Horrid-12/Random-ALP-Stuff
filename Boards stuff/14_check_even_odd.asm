; Program: Check whether a hexadecimal number is even or odd
; Input  : C000H
; Output : FFH at C001H if even
;          00H at C001H if odd

MVI E, FFH         ; Assume number is even

LXI H, C000H       ; HL = C000H
MOV A, M           ; A = number

RRC                ; Rotate right, LSB goes into Carry

JNC SKIP           ; Carry = 0 means even

MVI E, 00H         ; Carry = 1 means odd

SKIP:
INX H              ; HL = C001H
MOV M, E           ; Store result at C001H

HLT                ; Stop MPU