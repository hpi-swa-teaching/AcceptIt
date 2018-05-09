as yet unclassified
tearDown
	super tearDown.
	(Smalltalk classNamed: self userStoryName) removeFromSystemUnlogged.
	SystemOrganization removeCategory: self categoryName.