tests
testItDisplaysCategoriesContainingUserStories
		
	self selectCategory: ACUserStoryFactory categoryName.
	self assert: ACUserStoryFactory categoryName equals: self firstItemInCategoryList asString.
	