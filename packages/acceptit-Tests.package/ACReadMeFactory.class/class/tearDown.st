tearDown
tearDown
	userStory ifNotNil: [userStory removeFromSystemUnlogged].
	library ifNotNil: [library removeFromSystemUnlogged].
	SystemOrganization removeCategory: ACUserStoryFactory categoryName.
	SystemOrganization removeEmptyCategories.