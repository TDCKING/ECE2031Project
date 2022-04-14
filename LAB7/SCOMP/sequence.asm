ORG 0

	AND 0
	STORE &h100

LoopStart:
	
	LOAD &h100
	
CheckEven:
	
	AND One
	JZERO EVEN
	LOAD &h100
	SHIFT -1
	ADDI 1
	JUMP End
	
EVEN: 
	
	LOAD &h100
	ADDI 9
	
	
	
End:
	STORE &h100
	JUMP LoopStart
	
	
	
One:       DW   1
Two:       DW   2
Three:     DW   3
	


