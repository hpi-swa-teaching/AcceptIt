setUp and tearDown
setUp
	super setUp.
	
	ACUserStory createUserStory: UserStoryFactory userStoryString withCategory: UserStoryFactory categoryName.
	self createdClass: (Smalltalk classNamed: UserStoryFactory userStoryTitleTrimmed).
	
	ACUserStory createUserStory: UserStoryFactory userStoryString2 withCategory: UserStoryFactory categoryName2.
	self createdClass2: (Smalltalk classNamed: UserStoryFactory userStoryTitle2Trimmed).
	
	
	