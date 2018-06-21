setUp and tearDown
testItCreatesNewStoryWhenChangingTitle

	ACUserStory 
		createUserStory: ACUserStoryFactory userStoryString
		withCategory: ACUserStoryFactory categoryName.
		
	self selectCategory: ACUserStoryFactory categoryName.
	self selectUserStory: ACUserStoryFactory userStoryTitleTrimmed.
	
	self codePane sendKeys: 'Abc'.
	self codePane submorphs first submorphs first editor accept.

	self assert: false equals: ((Smalltalk classNamed: ('Abc', ACUserStoryFactory userStoryTitleTrimmed)) isNil).