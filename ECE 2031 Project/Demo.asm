ORG 0

 InitState:
 
	LOADI 0
	OUT LEDs
	
	IN Switches
	AND SwitchZero
	JPOS StateZero
	
	IN Switches
	AND SwitchOne
	JPOS StateOne
	
	IN Switches
	AND SwitchTwo
	JPOS StateTwo
	
	IN Switches
	AND SwitchThree
	JPOS StateThree
	
	IN Switches
	AND SwitchFour
	JPOS StateFour
	
	
	IN Switches
	AND SwitchFive
	JPOS StateFive
	
	IN Switches
	AND SwitchSix
	JPOS StateSix
	
	IN Switches
	AND SwitchSeven
	JPOS StateSeven
	
	IN Switches
	AND SwitchEight
	JPOS StateEight


	JUMP InitState
	

 StateZero: 
	LOADI 1
	OUT LEDs

	IN Switches
	AND SwitchNine
	JPOS InitState
	JUMP StateZero
	
	
 StateOne:
	LOADI 2
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateOne
	
StateTwo:
	LOADI 4
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateTwo
	
StateThree:
	LOADI 8
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateThree

StateFour:
	LOADI 16
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateFour
	
StateFive:
	LOADI 32
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateFive
	
StateSix:
	LOADI 64
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateSix
	
StateSeven:

	LOADI 128
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateSeven
	
StateEight:
	
	LOADI 256
	OUT LEDs

	IN Switches
	AND SwitchNine
	
	
	JPOS InitState
	JUMP StateEight
	
 Dead: JUMP Dead	
	
	
 SwitchZero: DW  &B0000000000000001
 SwitchOne: DW 	&B0000000000000010
 SwitchTwo: DW 	&B0000000000000100
 SwitchThree: DW &B0000000000001000
 SwitchFour: DW 	&B0000000000010000
 SwitchFive: DW 	&B0000000000100000
 SwitchSix: DW 	&B0000000001000000
 SwitchSeven: DW &B0000000010000000
 SwitchEight: DW &B0000000100000000
 SwitchNine: DW 	&B0000001000000000


; IO address constants
Switches:  EQU 000
LEDs:      EQU 001