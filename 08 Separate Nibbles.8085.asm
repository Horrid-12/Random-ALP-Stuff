; Program: Separate the two nibbles of a number
; Input  : 2000H
; Add the separated nibbles
; Store result at 2001H

LXI H, 2000H       ; HL = 2000H
MOV A, M           ; A = number

ANI 0FH            ; Mask upper nibble
MOV B, A           ; Store lower nibble in B

MOV A, M           ; Reload original number
ANI F0H            ; Mask lower nibble

RRC                ; Rotate right 4 times
RRC
RRC
RRC                ; Upper nibble moved to lower nibble

ADD B              ; Add both nibbles

INX H              ; HL = 2001H
MOV M, A           ; Store result at 2001H
HLT                ; Stop MPU