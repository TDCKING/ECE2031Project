; Simple test for the NeoPixel peripheral

ORG 0
	LOADI 255
	OUT PXL_A
	LOAD RedTest
	OUT PXL_D
	
	LOAD BlueTest
	OUT PXL_D
	
	LOADI 1
	OUT PXL_S
	
	LOADI 2
	OUT PXL_A
	LOAD RedTest
	OUT PXL_D
	
	
	OUT Timer
Loop2: IN Timer
	AND TimerMask
	JZERO Loop2
	
	LOADI 1
	OUT PXL_L
	
	

	
	
Dead: Jump Dead
	  
	
	
	

GreenTest: DW &B0000011111100000
RedTest:   DW &B1111100000000000
BlueTest:  DW &B0000000000011111

TimerMask: DW &B0000000000010000

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