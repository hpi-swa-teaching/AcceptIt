setUp and tearDown
setUp
	|createdUserStory|
	super setUp.
	createdUserStory := ACUserStory createUserStory: ACUserStoryFactory userStoryString withCategory: self categoryName.
	self userStory: createdUserStory.