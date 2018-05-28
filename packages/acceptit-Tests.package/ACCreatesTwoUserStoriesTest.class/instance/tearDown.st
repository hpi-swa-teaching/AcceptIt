setUp and tearDown
tearDown
	super tearDown.
	(Smalltalk classNamed: self userStoryTitle) removeFromSystemUnlogged.
	SystemOrganization removeCategory: self categoryName.
	(Smalltalk classNamed: self userStoryTitle2) removeFromSystemUnlogged.
	SystemOrganization removeCategory: self categoryName2.