shoutcore-Parsing
shoutParserClass

	^ (self class = ACUserStory class)
		ifTrue: [super shoutParserClass]
		ifFalse: [ACSHParserForScenario]