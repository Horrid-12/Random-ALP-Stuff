; Program: Replace even numbers with FFH
; Memory block: 2501H to 250AH

MVI B, 0AH         ; Counter = 10
LXI H, 2501H       ; HL = starting address

UP:
MOV A, M           ; A = memory content
RRC                ; LSB goes into Carry

JC SKIP             ; Carry = 1 means odd

MVI M, FFH         ; Replace even number with FFH

SKIP:
INX H              ; Move to next memory location
DCR B              ; Decrement counter
JNZ UP             ; Repeat until B = 0

HLT                ; Stop MPU