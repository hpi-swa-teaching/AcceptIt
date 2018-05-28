setUp and tearDown
setUp
	super setUp.
	
	ACUserStory createUserStory: self basicUserStory withCategory: self categoryName.
	self createdClass: (Smalltalk classNamed: self userStoryTitle).
	
	ACUserStory createUserStory: self basicUserStory2 withCategory: self categoryName2.
	self createdClass2: (Smalltalk classNamed: self userStoryTitle2).
	
	
	