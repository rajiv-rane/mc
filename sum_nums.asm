; Sum of first 10 integers

	AREA SUM, CODE, READONLY
		ENTRY
			LDR R0,= ARRAY
			LDR R1,= 10
			LDR R2,= 0

NEXT
			LDR R3, [R0], #4
			ADD R2, R2, R3
			SUB R1, R1, #1
			CMP R1, #0
			BNE NEXT

ARRAY DCD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	END