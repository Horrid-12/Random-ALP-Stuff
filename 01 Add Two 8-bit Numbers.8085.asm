; Program: Add two hexadecimal numbers
; Numbers: 12H and 7AH
; Store result at C000H

MVI A, 12H        ; A = 12H
ADI 7AH           ; A = A + 7AH = 12H + 7AH = 8CH
STA C000H         ; Store result at C000H
HLT               ; Stop MPU