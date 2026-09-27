; Program: Find 2's complement of a 16-bit number
; Input  : C000H-C001H
; Output : C002H-C003H

LHLD C000H        ; HL = 16-bit number

MOV A, H          ; A = high byte
CMA               ; 1's complement
MOV H, A          ; Store complemented high byte

MOV A, L          ; A = low byte
CMA               ; 1's complement
MOV L, A          ; Store complemented low byte

INX H             ; Add 1 to get 2's complement

SHLD C002H        ; Store result at C002H-C003H
HLT               ; Stop MPUs