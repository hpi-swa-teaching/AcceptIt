parser-emulation
parseStoryToDictionary: aStory

	|match|
	match := self matchStory: aStory.
	match failed ifTrue: [match failure signal].
	^self evaluator value: match