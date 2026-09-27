; Program: Increment alternate memory locations by 2
; Range: 1051H to 1060H

MVI B, 10H         ; Counter
LXI H, 1051H       ; HL = starting address

UP:
INR M              ; Increment selected location
INR M              ; Increment again, total +2

INX H              ; Move to next location
INX H              ; Skip alternate location

DCR B              ; Decrement counter twice
DCR B
JNZ UP             ; Repeat

HLT                ; Stop MPU