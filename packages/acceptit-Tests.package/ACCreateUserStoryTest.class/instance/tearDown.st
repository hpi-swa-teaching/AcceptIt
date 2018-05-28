setUp and tearDown
tearDown
	super tearDown.
	(Smalltalk classNamed: UserStoryFactory userStoryTitleTrimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: UserStoryFactory categoryName.