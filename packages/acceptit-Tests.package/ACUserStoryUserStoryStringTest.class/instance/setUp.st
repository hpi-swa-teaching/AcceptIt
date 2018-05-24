as yet unclassified
setUp
	|createdUserStory|
	createdUserStory := ACUserStory createUserStory: self basicUserStoryWithTitle withCategory: self categoryName.
	self userStory: createdUserStory.