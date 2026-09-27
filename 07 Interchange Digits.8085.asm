; Program: Interchange digits of a hexadecimal number
; Input  : AB00H
; New number stored at AB01H
; Sum stored at ABCDH

LXI H, AB00H       ; HL = AB00H
MOV A, M           ; A = original number

RRC                ; Rotate right
RRC                ; Rotate right
RRC                ; Rotate right
RRC                ; Rotate right
                   ; Exchange the two nibbles

INX H              ; HL = AB01H
MOV M, A           ; Store new number at AB01H

DCX H              ; HL = AB00H
ADD M              ; A = original + new number

STA ABCDH          ; Store sum at ABCDH
HLT                ; Stop MPU