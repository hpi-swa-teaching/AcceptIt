tests
testItCreatesNewStoryWhenChangingTitle
		
	self selectCategory: ACUserStoryFactory categoryName.
	self selectUserStory: ACUserStoryFactory userStoryTitleTrimmed.
	
	self codePane sendKeys: 'Abc'.
	self codePane submorphs first submorphs first editor accept.

	self assert: false equals: ((Smalltalk classNamed: ('Abc', ACUserStoryFactory userStoryTitleTrimmed)) isNil).
	
	(Smalltalk classNamed: 'AbcACCalculatorUserStory') removeFromSystemUnlogged.