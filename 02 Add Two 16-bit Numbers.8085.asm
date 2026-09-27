; Program: Add two 16-bit numbers
; First number  : C030H-C031H
; Second number : C032H-C033H
; Result        : C034H-C035H

LHLD C030H        ; HL = first 16-bit number
XCHG              ; DE = first number
LHLD C032H        ; HL = second 16-bit number
DAD D             ; HL = HL + DE
SHLD C034H        ; Store result at C034H-C035H
HLT               ; Stop MPU