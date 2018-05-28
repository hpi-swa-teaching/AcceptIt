setUp and tearDown
setUp
	super setUp.
	ACUserStory createUserStory: UserStoryFactory userStoryString
		withCategory: UserStoryFactory categoryName.
	self createdClass: (Smalltalk classNamed: UserStoryFactory userStoryTitleTrimmed).