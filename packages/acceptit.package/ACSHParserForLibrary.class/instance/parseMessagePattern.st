parse
parseMessagePattern

	(currentTokenFirst == $( )
		ifTrue: [self scanLine]
		ifFalse: [super parseMessagePattern]