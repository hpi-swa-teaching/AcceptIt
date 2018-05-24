as yet unclassified
tearDown
	super tearDown.
	(Smalltalk classNamed: self userStoryName) removeFromSystemUnlogged.
	SystemOrganization removeCategory: self categoryName.
	(Smalltalk classNamed: self userStoryName2) removeFromSystemUnlogged.
	SystemOrganization removeCategory: self categoryName2.