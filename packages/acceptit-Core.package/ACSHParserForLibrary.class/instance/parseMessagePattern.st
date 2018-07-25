method-highlighting
parseMessagePattern

	(currentTokenFirst == $()
		ifTrue: [self scanLine]
		ifFalse: [super parseMessagePattern]