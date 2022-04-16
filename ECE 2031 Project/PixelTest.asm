; Simple test for the NeoPixel peripheral

ORG 0
	LOADI 1
	OUT PXL_A
	LOAD RedTest
	OUT PXL_D
	
	LOADI 1
	OUT PXL_A
	IN PXL_D
	STORE ReadData
	
	LOADI 2
	OUT PXL_A
	LOAD ReadData
	OUT PXL_D
	
	

	
	
Dead: Jump Dead
	  
	
	
	

GreenTest: DW &B0000011111100000
RedTest:   DW &B1111111111111111
BlueTest:  DW &B0000000000011111

TimerMask: DW &B0000000000010000

ReadData:  DW &B1111100000000000

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