setUp and tearDown
tearDown
	super tearDown.
	(Smalltalk classNamed: UserStoryFactory userStoryTitleTrimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: UserStoryFactory categoryName.
	(Smalltalk classNamed: UserStoryFactory userStoryTitle2Trimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: UserStoryFactory categoryName2.