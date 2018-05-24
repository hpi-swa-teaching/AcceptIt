as yet unclassified
setUp
	super setUp.
	
	ACUserStory createUserStory: self basicUserStory withCategory: self categoryName.
	self createdClass: (Smalltalk classNamed: self userStoryName).
	
	ACUserStory createUserStory: self basicUserStory2 withCategory: self categoryName2.
	self createdClass2: (Smalltalk classNamed: self userStoryName2).
	
	
	