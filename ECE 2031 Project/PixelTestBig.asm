; Simple test for the NeoPixel peripheral

ORG 0

	LOADI 1
	OUT PXL_R
	
	
	OUT Timer
Loop1: 
	LOAD GreenTest
	OUT PXL_D
	IN Timer
	AND TimerMask
	JZERO Loop1
	
	
	LOADI 1
	OUT PXL_R
	
	LOAD RedTest
	OUT PXL_CA
	
Loop2: IN Timer
	AND TimerMask
	JZERO Loop2
	
	LOADI 0
	OUT PXL_R
	
	LOADI 1
	OUT PXL_S
	
	
	
	OUT Timer
Loop: IN Timer
	AND TimerMask
	JZERO Loop
	
	LOAD ReadData
	OUT PXL_CA
	

	
	
Dead: Jump Dead
	  
	
	
	

GreenTest: DW &B1111100000000000
RedTest:   DW &B0000011111100000
BlueTest:  DW &B0000000011111111

TimerMask: DW &B0000000000010000

ReadData:  DW &B0000000000000000

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