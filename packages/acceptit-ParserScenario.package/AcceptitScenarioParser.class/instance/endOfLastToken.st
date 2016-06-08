parsing
endOfLastToken
	
	.
	^ (tempString indexOf: Character cr startingAt: 1)
		min: (tempString indexOf: Character lf startingAt: 1)