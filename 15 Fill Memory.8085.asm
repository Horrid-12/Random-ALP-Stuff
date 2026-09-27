; Program: Fill memory locations 4500H to 4504H
; with hexadecimal numbers 09H to 0DH

MVI B, 05H         ; Counter = 5 locations
MVI A, 09H         ; Starting value = 09H
LXI H, 4500H       ; HL = starting memory address

UP:
MOV M, A           ; Store A in memory
INR A              ; Increment value
INX H              ; Move to next memory location
DCR B              ; Decrement counter
JNZ UP             ; Repeat until counter = 0

HLT                ; Stop MPU