; Program: Check whether a hexadecimal number is a palindrome
; Input  : 20F9H
; Output : B = 00H if palindrome
;          B = FFH if not palindrome

MVI B, 00H         ; Assume number is palindrome

LXI H, 20F9H       ; HL = 20F9H
MOV A, M           ; A = number

RRC                ; Rotate right
RRC                ; Rotate right
RRC                ; Rotate right
RRC                ; Rotate right
                   ; Exchange the two nibbles

CMP M              ; Compare rotated number with original

JZ SKIP            ; If equal, number is palindrome

MVI B, FFH         ; Otherwise B = FFH

SKIP:
HLT                ; Stop MPU