setUp and tearDown
setUp
	super setUp.
	ACUserStory createUserStory: ACUserStoryFactory userStoryString
		withCategory: ACUserStoryFactory categoryName.
	self createdClass: (Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed).