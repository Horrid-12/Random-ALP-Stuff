; Program: Add two BCD numbers
; Input  : AB00H and AB01H
; Output : BCD result from AB02H onwards
; AB02H = LSB
; AB03H = carry

MVI C, 00H         ; C = 00H

LXI H, AB00H       ; HL = AB00H
MOV A, M           ; A = first BCD number

INX H              ; HL = AB01H
ADD M              ; Add second BCD number

DAA                ; Decimal Adjust Accumulator

JNC SKIP           ; If no carry, skip
INR C              ; C = 01H if carry occurs

SKIP:
INX H              ; HL = AB02H
MOV M, A           ; Store BCD result at AB02H

INX H              ; HL = AB03H
MOV M, C           ; Store carry at AB03H

HLT                ; Stop MPU