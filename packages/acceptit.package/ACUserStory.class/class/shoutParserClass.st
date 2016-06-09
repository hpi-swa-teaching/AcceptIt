shoutcore-Parsing
shoutParserClass

	"^ (self inheritsFrom: ACUserStory)
		ifTrue: [AcceptitScenarioParser]
		ifFalse: [super shoutParserClass]"
	^super shoutParserClass