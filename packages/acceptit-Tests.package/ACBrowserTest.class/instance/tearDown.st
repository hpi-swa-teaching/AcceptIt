as yet unclassified
tearDown

	super tearDown.
	(Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: ACUserStoryFactory categoryName.