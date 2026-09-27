; Program: Count number of zero bits in an 8-bit number
; Input  : C000H
; Output : Count stored at C001H

MVI B, 08H         ; 8 bits to check
MVI C, 00H         ; C = zero counter

LXI H, C000H       ; HL = C000H
MOV A, M           ; A = input number

UP:
RRC                ; Rotate right, LSB goes into Carry
JC SKIP            ; If Carry = 1, bit is 1

INR C              ; Otherwise bit is 0, increment count

SKIP:
DCR B              ; Decrement bit counter
JNZ UP             ; Repeat for all 8 bits

INX H              ; HL = C001H
MOV M, C           ; Store zero count

HLT                ; Stop MPU