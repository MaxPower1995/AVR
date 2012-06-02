;AUTHOR: PRONOY CHOPRA
;WEBSITE: http://www.pronoy.in

;TAKE THE INPUT FROM PORTD AND OUTPUT IT ON PORTC
;DELAY NOT REQUIRED

.INCLUDE "../../include/m32def.inc"

.ORG 0
.EQU MYREG = R16
.EQU FULL = 0xFF
.EQU ZERO = 0x00

SETUP:
LDI MYREG, FULL
OUT DDRC, MYREG ;MAKE PORTC OUTPUT


LDI MYREG, ZERO
OUT DDRD, MYREG ;MAKE PORTD INPUT
LDI MYREG, FULL
OUT PORTD, MYREG ;ACTIVATE PULL UP RESISTORS ON PORTD

MAIN:
IN MYREG,PIND   ;WHEN ANY PIN OF PORT D IS TOUCHED TO GND
NOP				 ;INPUT IS A ONE CYCLE PROCESS
OUT PORTC, MYREG
RJMP MAIN