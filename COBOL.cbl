IDENTIFICATION DIVISION.
PROGRAM-ID. FIZZBUZZ.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 loopNumber picture is 9(2) value 0.
01 out picture is x(8) value " ".

PROCEDURE DIVISION.

    MAIN.
		perform 100 times
		
			move " " to out
			
			if function mod(loopNumber, 3) is = 0 then
				string out delimited by space
					"Fizz" delimited by size
					into out
				end-string
			end-if
			
			if function mod(loopNumber, 5) is = 0 then
				string out delimited by space
					"Buzz" delimited by size
					into out
				end-string
			end-if
			
			if out is = " " then
				display loopNumber 
			else
				display out
			end-if
			
			add 1 to loopNumber
			
		end-perform.

STOP RUN.
