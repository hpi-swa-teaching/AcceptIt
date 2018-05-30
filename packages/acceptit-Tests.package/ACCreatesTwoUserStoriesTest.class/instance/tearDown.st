setUp and tearDown
tearDown
	super tearDown.
	(Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: ACUserStoryFactory categoryName.
	(Smalltalk classNamed: ACUserStoryFactory userStoryTitle2Trimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: ACUserStoryFactory categoryName2.