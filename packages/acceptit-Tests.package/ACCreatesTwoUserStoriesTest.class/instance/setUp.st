setUp and tearDown
setUp
	super setUp.
	
	ACUserStory createUserStory: ACUserStoryFactory userStoryString withCategory: ACUserStoryFactory categoryName.
	self createdClass: (Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed).
	
	ACUserStory createUserStory: ACUserStoryFactory userStoryString2 withCategory: ACUserStoryFactory categoryName2.
	self createdClass2: (Smalltalk classNamed: ACUserStoryFactory userStoryTitle2Trimmed).
	
	
	