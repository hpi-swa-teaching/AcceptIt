tests
testItDisplaysSimpleUserStoryDefinition

	| codePaneText expectedText | 
	self selectCategory: ACUserStoryFactory categoryName.
	self selectUserStory: ACUserStoryFactory userStoryTitleTrimmed.

	expectedText := String streamContents: [:stream | 
		stream
			nextPutAll: ACUserStoryFactory userStoryTitleTrimmed;
			cr;
			cr;
			nextPutAll: ACUserStoryFactory userStoryContent].
	codePaneText := (self subject submorphs first submorphs first submorphs first) text asString.
	
	self assert: expectedText equals: codePaneText.