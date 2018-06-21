setUp and tearDown
testItDisplaysCategoriesContainingUserStories

	ACUserStory 
		createUserStory: ACUserStoryFactory userStoryString
		withCategory: ACUserStoryFactory categoryName.
		
	self selectCategory: ACUserStoryFactory categoryName.
	self assert: ACUserStoryFactory categoryName equals: ((self categoryList submorphs first submorphs first getListItem: 1) asString).