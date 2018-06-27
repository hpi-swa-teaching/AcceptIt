setUp and tearDown
testItDisplaysUserStories

	self selectCategory: ACUserStoryFactory categoryName.
	self selectUserStory: ACUserStoryFactory userStoryTitleTrimmed.
	
	self assert: ACUserStoryFactory userStoryTitleTrimmed equals: ((self userStoryList submorphs first submorphs first getListItem: 1) asString).