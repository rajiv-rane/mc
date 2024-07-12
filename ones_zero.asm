; Count the number of 1's and 0's

    AREA ONEZERO, CODE, READONLY
		ENTRY
			MOV R2, #0
			MOV R3, #0
			MOV R7, #2
			LDR R6,= LOOKUP

LOOP
			MOV R1, #32
			LDR R0, [R6], #4
NEXTBIT
			MOVS R0, R0, ROR, #1
			BHI ONES
ZEROES
			ADD R3, R3 #1
			B REPEAT
ONES
			ADD R2, R2, #1

REPEAT
			SUBS R1, R1, #1
			BNE NEXTBIT

			SUBS R7, R7, #1
			BNE LOOP
STOP B STOP
			LOOKUP DCD 0X5, 0X7
			END