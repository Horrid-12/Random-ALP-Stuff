; Program: Double each number in memory
; Block: D001H to D00AH
; Store result at the same location

MVI B, 0AH         ; Counter = 10
LXI H, D001H       ; HL = starting address

UP:
MOV A, M           ; A = memory content
ADD M              ; A = A + M = 2 × original value
MOV M, A           ; Store doubled value

INX H              ; Move to next location
DCR B              ; Decrement counter
JNZ UP             ; Repeat

HLT                ; Stop MPU