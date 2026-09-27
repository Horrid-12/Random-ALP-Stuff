; Program: Fill memory starting from AB00H
; with hexadecimal numbers 00H to 0FH

MVI B, 10H         ; Counter = 16
MVI A, 00H         ; Starting value = 00H
LXI H, AB00H       ; HL = AB00H

UP:
MOV M, A           ; Store current value
INR A              ; Increment value
INX H              ; Move to next memory location
DCR B              ; Decrement counter
JNZ UP             ; Repeat until B = 0

HLT                ; Stop MPU