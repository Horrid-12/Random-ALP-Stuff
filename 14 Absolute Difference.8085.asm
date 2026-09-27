; Program: Find absolute difference of two numbers
; Input  : 3600H and 3601H
; Output : Absolute difference at 3602H

LXI H, 3600H       ; HL = 3600H
MOV A, M           ; A = first number

INX H              ; HL = 3601H
SUB M              ; A = first - second

JP SKIP             ; If positive, result is already correct

MOV A, M           ; A = second number
DCX H              ; HL = 3600H
SUB M              ; A = second - first

SKIP:
STA 3602H          ; Store absolute difference
HLT                ; Stop MPU