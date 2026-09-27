; Program: Find 1's complement of an 8-bit number
; Input  : C000H
; Output : C001H

LDA C000H         ; Load number from C000H into A
CMA               ; Find 1's complement
STA C001H         ; Store result at C001H
HLT               ; Stop MPU