setUp and tearDown
setUp
	|createdUserStory|
	super setUp.
	createdUserStory := ACCEPTIT 
									createUserStory: ACUserStoryFactory userStoryString 
									withCategory: self categoryName.
	self userStory: createdUserStory.