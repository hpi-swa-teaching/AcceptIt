setUp and tearDown
setUp
	super setUp.
	
	ACCEPTIT createUserStory: ACUserStoryFactory userStoryString withCategory: ACUserStoryFactory categoryName.
	self createdClass: (Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed).
	
	ACCEPTIT createUserStory: ACUserStoryFactory userStoryString2 withCategory: ACUserStoryFactory categoryName2.
	self createdClass2: (Smalltalk classNamed: ACUserStoryFactory userStoryTitle2Trimmed).
	
	
	