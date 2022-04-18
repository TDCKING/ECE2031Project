; Simple test for the NeoPixel peripheral

ORG 0
	LOADI 1
	OUT PXL_A
	LOAD RedTest
	OUT PXL_Red
	
	LOADI 1
	OUT PXL_A
	
	IN PXL_Red
	STORE ReadDataR
	
	LOADI 2
	OUT PXL_A
	LOAD ReadDataR
	OUT PXL_Red
	
	LOADI 3
	OUT PXL_A
	LOAD GreenTest
	OUT PXL_Green
	
	LOADI 3
	OUT PXL_A
	
	IN PXL_Green
	STORE ReadDataG
	
	LOADI 4
	OUT PXL_A
	LOAD ReadDataG
	OUT PXL_Green
	
	LOADI 5
	OUT PXL_A
	LOAD BlueTest
	OUT PXL_Blue
	
	LOADI 5
	OUT PXL_A
	
	IN PXL_Blue
	STORE ReadDataB
	
	LOADI 6
	OUT PXL_A
	LOAD ReadDataB
	OUT PXL_Blue
	
	LOADI 7
	OUT PXL_A
	LOAD BlueTest
	OUT PXL_D
	
	
	
	
	
	OUT Timer
Loop: IN Timer
	AND TimerMask
	JZERO Loop
	
	;LOAD ReadData
	;OUT PXL_CA
	LOADI 0
	OUT PXL_A
	
P1:	IN Switches
	AND SwitchMask
	JZERO P1
	
	LOADI 1
	OUT PXL_R
	
	
	OUT Timer
Loop1: 
	LOAD RedTest
	OUT PXL_Red
	LOAD GreenTest
	OUT PXL_Green
	LOAD BlueTest
	OUT PXL_Blue
	IN Timer
	AND TimerMask
	JZERO Loop1
	
;	LOADI 1
;	OUT PXL_R
	
P2:	IN Switches
	AND SwitchMask
	JPOS P2
	
	OUT Timer
Loop3: IN Timer
	AND TimerMask
	JZERO Loop3
	
	LOAD AllTest2
	OUT PXL_CA
	
	LOADI 1
	OUT PXL_R
	
	OUT Timer
Loop2: IN Timer
	AND TimerMask
	JZERO Loop2
	
	LOADI 0
	OUT PXL_R
	
	LOADI 1
	OUT PXL_S
	
	LOAD AllTest
	OUT PXL_CA
	
	LOADI 1
	OUT PXL_L
	
P3: IN Switches
	AND SwitchMask
	JZERO P3
	
	LOADI 2
	OUT PXL_L
	
	
Dead: Jump Dead
	  
	
	
	

GreenTest: DW &B0000000000000001
RedTest:   DW &B0000000000000001
BlueTest:  DW &B0000000000000001

AllTest:   DW &B0000011111111111
AllTest2:  DW &B1111111111100000
AllTest3:  DW &B0000011111100000

TimerMask: DW &B0000000000010000
SwitchMask: DW &B0000000000000001

ReadDataR:  DW &B0000000000000000
ReadDataG: DW &B0000000000000000
ReadDataB: DW &B0000000000000000

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