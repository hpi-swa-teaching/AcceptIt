setUp and tearDown
tearDown
	super tearDown.
	(Smalltalk classNamed: self userStoryTitleTrimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: self categoryName.