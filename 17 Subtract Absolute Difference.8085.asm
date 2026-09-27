; Program: Find absolute difference of two hex numbers
; Input  : 5000H and 5001H
; Output : 5002H

LXI H, 5000H       ; HL = 5000H
MOV A, M           ; A = first number

INX H              ; HL = 5001H
SUB M              ; A = first - second

JP GO              ; If positive, go to GO

MOV A, M           ; A = second number
DCX H              ; HL = 5000H
SUB M              ; A = second - first

GO:
STA 5002H          ; Store result
HLT                ; Stop