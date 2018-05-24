as yet unclassified
setUp
	super setUp.
	
	ACUserStory userStoryNamed: self userStoryName 
		story: self basicUserStory
		withCategory: self categoryName
		fullText: self basicUserStory.
	self createdClass: (Smalltalk classNamed: self userStoryName).
	
	ACUserStory userStoryNamed: self userStoryName2 
		story: self basicUserStory2
		withCategory: self categoryName2
		fullText: self basicUserStory2.
	self createdClass2: (Smalltalk classNamed: self userStoryName2).
	
	
	