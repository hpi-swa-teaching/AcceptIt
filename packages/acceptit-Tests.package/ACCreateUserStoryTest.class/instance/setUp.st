setUp and tearDown
setUp
	super setUp.
	ACCEPTIT createUserStory: ACUserStoryFactory userStoryString withCategory: ACUserStoryFactory categoryName.
	self createdClass: (Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed).