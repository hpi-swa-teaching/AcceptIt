shoutcore-Parsing
shoutParserClass

	^ (self inheritsFrom: ACUserStory)
		ifTrue: [ACUserStoryParser]
		ifFalse: [super shoutParserClass].