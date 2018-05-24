setUp and tearDown
setUp
	super setUp.
	ACUserStory createUserStory: self userStoryString
		withCategory: self categoryName.
	self createdClass: (Smalltalk classNamed: self userStoryNameTrimmed).