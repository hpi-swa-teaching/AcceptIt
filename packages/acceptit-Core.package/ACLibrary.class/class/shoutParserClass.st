parsing hooks
shoutParserClass

	^ (self class = ACLibrary class)
		ifTrue: [super shoutParserClass]
		ifFalse: [ACSHParserForLibrary]