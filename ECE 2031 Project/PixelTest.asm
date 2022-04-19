; Simple test for the NeoPixel peripheral

ORG 0

Red: LOADI 0
	OUT PXL_CA
	
	OUT Timer
T1: IN Timer
	AND Bit1
	JZERO T1

	LOADI 0
	OUT PXL_A
Red1: LOAD Red24Bit
	OUT PXL_Red
	LOADI 0
	OUT PXL_Blue
	
	LOAD HalfCounter
	ADDI 1
	STORE HalfCounter
	SUB Half
	JNEG Red1
	
	LOADI 0
	STORE HalfCounter
	
Red2: LOAD Red16Bit
	OUT PXL_D
	
	LOAD HalfCounter
	ADDI 1
	STORE HalfCounter
	SUB Half
	JNEG Red2
	
	LOADI 0
	STORE HalfCounter
	
P1:	IN Switches
	AND Bit1
	JPOS Blue
	
	IN Switches
	AND Bit2
	JPOS Green
	
	JUMP P1
	
Blue: LOADI 0
	OUT PXL_CA
	
	OUT Timer
T2: IN Timer
	AND Bit1
	JZERO T2

	LOADI 0
	OUT PXL_A
Blue1: LOAD Blue24Bit
	OUT PXL_Blue
	
	LOAD HalfCounter
	ADDI 1
	STORE HalfCounter
	SUB Half
	JNEG Blue1
	
	LOADI 0
	STORE HalfCounter
	
Blue2: LOAD Blue16Bit
	OUT PXL_D
	
	LOAD HalfCounter
	ADDI 1
	STORE HalfCounter
	SUB Half
	JNEG Blue2
	
	LOADI 0
	STORE HalfCounter
	
P2:	IN Switches
	AND Bit1
	JZERO Red
	
	JUMP P2
	
Green: LOADI 0
	OUT PXL_CA
	
	OUT Timer
T3: IN Timer
	AND Bit1
	JZERO T3

	LOADI 0
	OUT PXL_A
Green1: LOAD Green24Bit
	OUT PXL_Green
	LOADI 0
	OUT PXL_Blue
	
	LOAD HalfCounter
	ADDI 1
	STORE HalfCounter
	SUB Half
	JNEG Green1
	
	LOADI 0
	STORE HalfCounter
	
Green2: LOAD Green16Bit
	OUT PXL_D
	
	LOAD HalfCounter
	ADDI 1
	STORE HalfCounter
	SUB Half
	JNEG Green2
	
	LOADI 0
	STORE HalfCounter
	
P3:	IN Switches
	AND Bit2
	JZERO Red
	
	JUMP P3	
	
	
	
Red24Bit:  DW  &B0000000000000001
Red16Bit:  DW  &B0000100000000000
Green24Bit: DW &B0000000000000001
Green16Bit: DW &B0000000000100000
Blue24Bit: DW  &B0000000000000001
Blue16Bit: DW  &B0000000000000001
HalfCounter: DW 0
Half:      DW 4

Bit1:  	   DW  &B0000000000000001
Bit2:      DW  &B0000000000000010
	
; IO address constants
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005
PXL_A:     EQU &H0B0
PXL_D:     EQU &H0B1
PXL_CA:	   EQU &H0B2
PXL_R:	   EQU &H0B3
PXL_S:	   EQU &H0B4
PXL_L:	   EQU &H0B5
PXL_Red:   EQU &H0B6
PXL_Green: EQU &H0B7
PXL_Blue:  EQU &H0B8