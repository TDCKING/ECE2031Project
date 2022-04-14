; SimpleDemo.asm
; Tests basic instructions in SCOMP

ORG 0

	; Some basic math
	LOAD   One
	ADD    Two
	ADD    NegTwo
	ADDI   5
	ADDI   -5
	SUB    Three
	SUB    NegThree
	
	; Some basic logic
	LOADI  0
	OR     LowByte
	AND    Bit2
	XOR    LowByte
	SHIFT  4
	SHIFT  -4
	
	; Jumps
	LOADI  0
	JPOS   WrongJump
	JNEG   WrongJump
	JZERO  CheckJPOS
	
WrongJump:
	LOADI  &HEE         ; 0xEE would indicate an error
	JUMP   WrongJump

CheckJPOS:
	LOADI  -8
	JPOS   WrongJump
	LOADI  0
	JPOS   WrongJump
	LOADI  8
	JPOS   Questions
	JUMP   WrongJump

Questions:
	LOADI  &H1337       ; Why doesn't AC get 0x1337 in it?
	OR     255          ; Why doesn't AC get OR'd with 255 (0xFF)?
	
Finish:
	LOAD   Buzz
	JUMP   Finish       ; Infinite loop
	
; Useful values
One:       DW   1
Two:       DW   2
Three:     DW   3
NegOne:    DW  -1
NegTwo:    DW  -2
NegThree:  DW  -3
Bit0:      DW  &B0001
Bit1:      DW  &B0010
Bit2:      DW  &B0100
Bit3:      DW  &B1000
LowByte:   DW  &H00FF
Buzz:      DW  &HABEE
