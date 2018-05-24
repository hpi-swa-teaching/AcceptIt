setUp and tearDown
tearDown
	super tearDown.
	(Smalltalk classNamed: self userStoryNameTrimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: self categoryName.