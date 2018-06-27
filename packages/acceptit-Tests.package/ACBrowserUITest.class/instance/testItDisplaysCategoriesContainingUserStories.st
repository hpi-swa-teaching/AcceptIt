setUp and tearDown
testItDisplaysCategoriesContainingUserStories
		
	self selectCategory: ACUserStoryFactory categoryName.
	self assert: ACUserStoryFactory categoryName equals: ((self categoryList submorphs first submorphs first getListItem: 1) asString).
	