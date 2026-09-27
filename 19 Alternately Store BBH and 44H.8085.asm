; Program: Fill memory block 2000H to 2009H
; with BBH and 44H alternately

MVI B, 0AH         ; Counter = 10 locations
MVI A, BBH         ; First value = BBH
LXI H, 2000H       ; HL = starting address

UP:
MOV M, A           ; Store current value
CMA                ; Complement BBH <-> 44H
INX H              ; Move to next location
DCR B              ; Decrement counter
JNZ UP             ; Repeat until B = 0

HLT                ; Stop MPU