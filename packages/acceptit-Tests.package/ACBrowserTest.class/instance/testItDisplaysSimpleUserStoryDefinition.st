setUp and tearDown
testItDisplaysSimpleUserStoryDefinition

	| codePaneText expectedText | 
	ACUserStory 
		createUserStory: ACUserStoryFactory userStoryString
		withCategory: ACUserStoryFactory categoryName.
		
	self selectCategory: ACUserStoryFactory categoryName.
	self selectUserStory: ACUserStoryFactory userStoryTitleTrimmed.

	expectedText := String streamContents: [:stream | 
		stream
			nextPutAll: ACUserStoryFactory userStoryTitleTrimmed;
			cr;
			cr;
			nextPutAll: ACUserStoryFactory userStoryContent].
	codePaneText := (self submorphs first submorphs first) text asString.
	
	self assert: expectedText equals: codePaneText.