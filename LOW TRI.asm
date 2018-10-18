;code for lower triangle

.ORIG x3000 ;starting address
AND R0,R0,#0
ADD R0,R0,#15
ADD R0,R0,#15
ADD R0,R0,#12
AND R1,R1,#0
ADD R1,R1,#5
ADD R3,R3,#0
ADD R2,R2,#1
LOOP
	ADD R3,R2,#0

    LOOP1
    OUT
    ADD R3,R3,#-1
    BRp LOOP1
	
	ADD R2,R2,#1
        
	LEA R0,CW
	PUTS
	
	AND R0,R0,#0
	ADD R0,R0,#15
	ADD R0,R0,#15
	ADD R0,R0,#12
	ADD R1,R1,#-1
 	BRp LOOP
HALT
CW .STRINGZ "\n"
.END
