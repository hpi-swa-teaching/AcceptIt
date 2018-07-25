method-highlighting
scanWhitespace

	| c |
	self inScanLine ifFalse: [^ super scanWhitespace].
	
	[c := self currentChar.
	(c notNil and: [c isSeparator]) and: [(self isEndOfLine: c) not]] 
		whileTrue: [sourcePosition := sourcePosition + 1].
	c == $" ifTrue: [self scanComment]