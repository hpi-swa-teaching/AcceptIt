as yet unclassified
setUp
	super setUp.
	ACUserStory userStoryNamed: self userStoryName 
	story: self basicUserStory
	withCategory: self categoryName
	fullText: self basicUserStory.
	self createdClass: (Smalltalk classNamed: self userStoryName).