parser-emulation
parseStoryToDictionary: aStory
	|match|
	match := self matchStory: aStory.
	^self evaluator value: match