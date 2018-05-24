as yet unclassified
setUp
	|createdUserStory|
	super setUp.
	createdUserStory := ACUserStory createUserStory: self basicUserStoryWithTitle withCategory: self categoryName.
	self userStory: createdUserStory.