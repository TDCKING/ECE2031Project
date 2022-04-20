; Simple test for the NeoPixel peripheral

ORG 0
	
	
GRADIENTTEST:
		
	LOADI 0
	OUT PXL_A
	
	
	EachRow:
	
		Load RowCount
		JZERO End
		ADDI -1
		STORE RowCount
		
		Load RedInitial
		Store RedStore
		Load GreenInitial
		Store GreenStore
		Load BlueInitial
		Store BlueStore
		
		LoadI 32
		Store GradientCount
		
		
		GradientRow:
			Load GradientCount
			JZERO GradientRowReverse
			ADDI -1
			STORE GRADIENTCOUNT
		
			LOAD RedStore
			OUT PXL_Red
			ADDI -6
			STORE RedStore
		
			LOAD GreenStore
			OUT PXL_Green
			ADDI 6
			STORE GreenStore
			
			LOAD BlueStore
			OUT PXL_blue
			ADDI 4
			STORE BlueStore
		Jump GradientRow
	
	
		GradientRowReverse:
		

			
			Load RedFinal
			Store RedStore
			Load GreenFinal
			Store GreenStore
			Load BlueFinal
			Store BlueStore
			
			LoadI 32
			Store GradientCount
		
			GRRLoop:
				Load GradientCount
				JZERO EachRow
				ADDI -1
				STORE GRADIENTCOUNT
			
				LOAD RedStore
				OUT PXL_Red
				ADDI 6
				STORE RedStore
			
				LOAD GreenStore
				OUT PXL_Green
				ADDI -6
				STORE GreenStore
				
				LOAD BlueStore
				OUT PXL_blue
				ADDI -4
				STORE BlueStore
			Jump GRRLoop
			
			
			
			

END: JUMP END	
	
	
Red24Bit:  DW  &B0000000000000001
Red16Bit:  DW  &B0000100000000000
Green24Bit: DW &B0000000000000001
Green16Bit: DW &B0000000000100000
Blue24Bit: DW  &B0000000000000001
Blue16Bit: DW  &B0000000000000001
RedStart:  DW  &B0000000011111111
GreenStart: DW &B0000000011111111
BlueStart: DW  &B0000000011111111

RedStore:  DW  &B0000000000000000
GreenStore: DW &B0000000000000000
BlueStore: DW  &B0000000000000000




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

RedInitial: DW 255
GreenInitial: DW 51
BlueInitial: DW 153

RedFinal: DW 69
GreenFinal: DW 237
BlueFinal: DW 277


GradientCount: DW 32
RowCOunt: DW 3



