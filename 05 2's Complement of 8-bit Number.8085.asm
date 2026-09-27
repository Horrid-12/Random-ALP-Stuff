; Program: Find 2's complement of an 8-bit number
; Input  : C000H
; Output : C001H

LDA C000H         ; Load number into A
CMA               ; Find 1's complement
INR A             ; Add 1 to get 2's complement
STA C001H         ; Store result at C001H
HLT               ; Stop MPU