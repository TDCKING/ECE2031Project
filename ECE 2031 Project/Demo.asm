ORG 0

CALL PRELOADBUSSES

 InitState:
 
	LOADI 0
	OUT PXL_S
	OUT PXL_L
	
	LOADI 0
	OUT LEDs
	
	LOAD PINK
	OUT PXL_CA
	
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
	
	
	SateZeroLoop:
	
		IN Switches
		AND SwitchNine
		JPOS InitState
		
		  REFRESH: 
	
			IN Switches
			AND SwitchEight
			SHIFT -8
			OUT PXL_R
			OUT LEDs
			
			LOADI 0
			OUT PXL_A
			
			;Load WHITE Default Color
			LOAD WHITE
			STORE COLOR
			;Check 0th Switch
			IN Switches
			AND SwitchZero
			JZERO FIRSTROW
			;ELSE LOAD COLOR TO BE WRITTEN
			LOAD PURPLE
			STORE COLOR
			
			FIRSTROW:
				CALL ROWWRITER
			
			;Load WHITE Default Color
			LOAD WHITE
			STORE COLOR
			;Check 1st Switch
			IN Switches
			AND SWITCHONE
			JZERO SECONDROW
			;ELSE LOAD COLOR TO BE WRITTEN
			LOAD BLUE
			STORE COLOR	
				
			SECONDROW:
				CALL ROWWRITER
			
			;Load WHITE Default Color
			LOAD WHITE
			STORE COLOR
			;Check 2nd Switch
			IN Switches
			AND SWITCHTWO
			JZERO THIRDROW
			;ELSE LOAD COLOR TO BE WRITTEN
			LOAD GREEN
			STORE COLOR	
				
			THIRDROW:
				CALL ROWWRITER

			;Load WHITE Default Color
			LOAD WHITE
			STORE COLOR
			;Check 2nd Switch
			IN Switches
			AND SWITCHTHREE
			JZERO FOURTHROW
			;ELSE LOAD COLOR TO BE WRITTEN
			LOAD YELLOW
			STORE COLOR	
				
			FOURTHROW:
				CALL ROWWRITER
			
			;Load WHITE Default Color
			LOAD WHITE
			STORE COLOR
			;Check 2nd Switch
			IN Switches
			AND SWITCHFOUR
			JZERO FIFTHROW
			;ELSE LOAD COLOR TO BE WRITTEN
			LOAD ORANGE
			STORE COLOR	
				
			FIFTHROW:
				CALL ROWWRITER
				
			;Load WHITE Default Color
			LOAD WHITE
			STORE COLOR
			;Check 2nd Switch
			IN Switches
			AND SWITCHFIVE
			JZERO SIXTHROW
			;ELSE LOAD COLOR TO BE WRITTEN
			LOAD RED
			STORE COLOR	
				
			SIXTHROW:
				CALL ROWWRITER	
	

		
	JUMP SateZeroLoop
	
	
 StateOne:
	LOADI 2
	OUT LEDs

	IN Switches
	AND SwitchNine
	JPOS InitState
	
		;SET ALL TO PINK TEST
		LOAD TEAL
		OUT PXL_CA
	
	JUMP StateOne
	
StateTwo:
	LOADI 4
	OUT LEDs
	
		RedLoop: 
			
			
			LOAD Red16Bit
			OUT PXL_CA
			OUT Timer
		T1: IN Timer
			AND Bit0
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
			
		P1:	IN Switches
			AND Bit0
			JPOS BlueLoop
			
			IN Switches
			AND Bit1
			JPOS GreenLoop
			
			IN Switches
			AND SwitchNine
			JPOS InitState
			
			JUMP P1
			
		BlueLoop: 
			LOAD Blue16Bit
			OUT PXL_CA
			
			OUT Timer
		T2: IN Timer
			AND Bit0
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
			
		P2:	IN Switches
			AND Bit0
			JZERO RedLoop
			
			IN Switches
			AND SwitchNine
			JPOS InitState
			
			JUMP P2
			
		GreenLoop: LOAD Green16Bit
			OUT PXL_CA
			
			OUT Timer
		T3: IN Timer
			AND Bit0
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
			
		P3:	IN Switches
			AND Bit1
			JZERO RedLoop
			
			IN Switches
			AND SwitchNine
			JPOS InitState
			
			JUMP P3	
	
		
	
	
	
StateThree:
	LOADI 8
	OUT LEDs
	STATETHREELOOP:
	
		IN Switches
		AND SwitchNine
		JPOS InitState
			
		 ;Switch Between the Two Busses
			LOADI 4
			OUT LEDs
			IN Switches
			AND SwitchZero
			JPOS TWO
			
			IN Switches
			AND SwitchOne
			JPOS THREE
			
			JUMP STATETHREELOOP
			
		TWO:
			LOADI 2
			OUT PXL_L
			OUT LEDs
			JUMP STATETHREELOOP
			
		THREE:
			LOADI 3
			OUT PXL_L
			OUT LEDs
			JUMP STATETHREELOOP
	
	
	
	JUMP STATETHREELOOP

StateFour:
	LOADI 16
	OUT LEDs
	
	
	LOADI 0
	OUT PXL_A

		Cascade: 
			IN Switches
			AND SwitchNine
			JPOS InitState
			IN PXL_D
			STORE AllStore
			LOADI 0
			STORE CascadeA
			LOADI 0
			OUT PXL_A
			IN Switches
			AND SwitchMaskR
			SHIFT -3
			OUT PXL_Red
			IN Switches
			AND SwitchMaskG
			OUT PXL_Green
			IN Switches
			AND SwitchMaskB
			SHIFT 3
			OUT PXL_Blue
			
			LOADI 0
			OUT PXL_A
			
			IN PXL_D
			SUB AllStore
			JZERO Cascade
			IN Switches
			AND SwitchNine
			JPOS InitState
			
		CascadeL: IN PXL_Red
			STORE RedStore
			IN PXL_Green
			STORE GreenStore
			IN PXL_Blue
			STORE BlueStore
			OUT PXL_Blue
			LOAD RedStore
			OUT PXL_Red
			LOAD GreenStore
			OUT PXL_Green
			LOAD BlueStore
			OUT PXL_Blue
			
			OUT Timer
		TimerL2: IN Timer
			AND Bit0
			JZERO TimerL2
			
			LOAD CascadeA
			OUT PXL_A
			ADDI 1
			STORE CascadeA
			
			IN Switches
			AND SwitchNine
			JPOS InitState
			
			LOAD CascadeA
			SUB CascadeEnd
			JNEG CascadeL
			
			IN Switches
			AND SwitchNine
			JPOS InitState
			
			JUMP Cascade
	
StateFive:
	LOADI 32
	OUT LEDs

		GRADIENTTEST:
				
	LOADI 0
	OUT PXL_A
	LOADI 3
	STORE RowCount
	
			
			
			EachRow:
				IN Switches
				AND SwitchNine
				JPOS InitState
				
				
				Load RowCount
				JZERO End
				ADDI -1
				STORE RowCount
				
				Load RedInitial
				Store RedStoreGrad
				Load GreenInitial
				Store GreenStoreGrad
				Load BlueInitial
				Store BlueStoreGrad
				
				LoadI 32
				Store GradientCount
				
				
				GradientRow:
					IN Switches
					AND SwitchNine
					JPOS InitState
					
					Load GradientCount
					JZERO GradientRowReverse
					ADDI -1
					STORE GRADIENTCOUNT
				
					LOAD RedStoreGrad
					OUT PXL_Red
					ADDI -6
					STORE RedStoreGrad
				
					LOAD GreenStoreGrad
					OUT PXL_Green
					ADDI 6
					STORE GreenStoreGrad
					
					LOAD BlueStoreGrad
					OUT PXL_blue
					ADDI 4
					STORE BlueStoreGrad
				Jump GradientRow
			
			
				GradientRowReverse:
				
					IN Switches
					AND SwitchNine
					JPOS InitState
					
					Load RedFinal
					Store RedStoreGrad
					Load GreenFinal
					Store GreenStoreGrad
					Load BlueFinal
					Store BlueStoreGrad
					
					LoadI 32
					Store GradientCount
				
					GRRLoop:
						Load GradientCount
						JZERO EachRow
						ADDI -1
						STORE GRADIENTCOUNT
					
						LOAD RedStoreGrad
						OUT PXL_Red
						ADDI 6
						STORE RedStoreGrad
					
						LOAD GreenStoreGrad
						OUT PXL_Green
						ADDI -6
						STORE GreenStoreGrad
						
						LOAD BlueStoreGrad
						OUT PXL_blue
						ADDI -4
						STORE BlueStoreGrad
					Jump GRRLoop
					
					
					
					

		END: 
					IN Switches
					AND SwitchNine
					JPOS InitState
		JUMP END	
	
	
	
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




ROWWRITER:
	LOADI 32
	STORE COUNTER
		

	WRITELOOP:
		LOAD COUNTER
		JZERO  ENDWRITE
		ADDI -1
		STORE COUNTER
			
			
		LOAD COLOR
		OUT PXL_D
		JUMP WRITELOOP
	ENDWRITE:
		RETURN
		
	
	




	RED: DW &HF800  
	ORANGE: DW &HFB40
	YELLOW: DW &HFFE5
	GREEN: DW &H17E0
	BLUE: DW &H297F
	PURPLE: DW &H981F
	WHITE: DW  &HFFFF
		
	PINK: DW &HF97C
	TEAL: DW &H2F9F
	
	PXL_A:     EQU &H0B0
	PXL_D:     EQU &H0B1
	PXL_CA:	   EQU &H0B2
	PXL_R:	   EQU &H0B3
	PXL_S:	   EQU &H0B4
	PXL_L:	   EQU &H0B5
	PXL_Red:   EQU &H0B6
	PXL_Green: EQU &H0B7
	PXL_Blue:  EQU &H0B8
	
	Switches:  EQU 000
	LEDs:      EQU 001
	Timer:     EQU 002
	
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

COLOR: DW 0
COUNTER: DW 32

RainbowRoad: DW 32
TropicalBreeze: DW 96
 
 
Red24Bit:  DW  &B0000000000000001
Red16Bit:  DW  &B0000100000000000
Green24Bit: DW &B0000000000000001
Green16Bit: DW &B0000000000100000
Blue24Bit: DW  &B0000000000000001
Blue16Bit: DW  &B0000000000000001

HalfCounter: DW 0
Half:      DW 96

Bit0:  	   DW  &B0000000000000001
Bit1:      DW  &B0000000000000010
Bit2:      DW  &B0000000000000100
Bit3:      DW  &B0000000000001000
Bit4:      DW  &B0000000000010000
Bit5:      DW  &B0000000000100000
Bit6:      DW  &B0000000001000000
Bit7:      DW  &B0000000010000000
Bit8:      DW  &B0000000100000000
Bit9:      DW  &B0000001000000000


CascadeA:  DW  1
CascadeEnd: DW 192


SwitchMaskR: DW &B0000000111000000
SwitchMaskG: DW &B0000000000111000
SwitchMaskB: DW &B0000000000000111
	
RedStore:  DW  &B0000000000000000
GreenStore: DW &B0000000000000000
BlueStore: DW  &B0000000000000000
AllStore:  DW  &B0000000000000000

RedInitial: DW 255
GreenInitial: DW 51
BlueInitial: DW 153

RedFinal: DW 69
GreenFinal: DW 237
BlueFinal: DW 277


GradientCount: DW 32
RowCOunt: DW 3

RedStoreGrad:  DW  &B0000000000000000
GreenStoreGrad: DW &B0000000000000000
BlueStoreGrad: DW  &B0000000000000000
 
 PRELOADBUSSES:
 
		;PRELOAD BUSSES 2/3

			LOADI 2
			OUT PXL_S
			
			LOADI 0
			OUT PXL_A
			
		LOOP: 
			LOADI 1
			OUT LEDs

			LOAD RED
			OUT PXL_D
			
			LOAD ORANGE
			OUT PXL_D
			
			LOAD YELLOW
			OUT PXL_D
			
			LOAD GREEN
			OUT PXL_D		  
			LOAD BLUE
			OUT PXL_D
				  
			
				
				
			LOAD PURPLE
			OUT PXL_D
				
			LOAD RAINBOwROAD
			ADDI -1
			STORE RAINBOwROAD
			JZERO NEXT
			JUMP LOOP
				  
		NEXT:	
		;Load Teal/Pink Alternating onto Bus 3	
			LOADI 3
			Out PXL_S
			  
			LOADI 0
			OUT PXL_A
			
			 
		LOOPTWO:
			LOADI 2
			OUT LEDs

			LOAD PINK
			OUT PXL_D
			  
			LOAD TEAL
			OUT PXL_D
			
			LOAD TropicalBreeze
			ADDI -1
			STORE TropicalBreeze
			JZERO ENDPRELOAD
			Jump LOOpTWO
		ENDPRELOAD:
			LOADI 0
			OUT PXL_S
			OUT PXL_L
			RETURN