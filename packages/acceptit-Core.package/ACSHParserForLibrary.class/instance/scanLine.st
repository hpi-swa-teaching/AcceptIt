as yet unclassified
scanLine

	self flag: #refactor.
	self inScanLine: true.
	
	sourcePosition := currentTokenSourcePosition.
	[(sourcePosition < source size)
		and: [(source at: sourcePosition) ~= $)]
		and: [(self isEndOfLine: (source at: sourcePosition)) not]] 
		whileTrue: [sourcePosition := sourcePosition + 1].
			
	self rangeType: #patternUnary start: currentTokenSourcePosition end: sourcePosition.
	sourcePosition := sourcePosition + 1.
	
	self scanNext.
	
	[self atEndOfLine or: [currentToken isNil]] whileFalse: [
		currentToken ifNotNil: [
			(currentToken first == $:) 
				ifTrue: [
					(self scanNext) ifNotNil: [
						self pushArgument: currentToken.
						self rangeType: #blockPatternArg.
						]
					]
				ifFalse: [
					self rangeType: #patternUnary
					].
			].
		self scanNext.
		].
	
	self inScanLine: false.
	self scanNext.