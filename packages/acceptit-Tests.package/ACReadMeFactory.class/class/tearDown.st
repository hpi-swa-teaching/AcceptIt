as yet unclassified
tearDown
	(Smalltalk classNamed: UserStoryFactory userStoryTitleTrimmed) removeFromSystemUnlogged.
	(Smalltalk classNamed: 'MySuperCalculatorTESTLibrary') removeFromSystemUnlogged.
	SystemOrganization removeCategory: UserStoryFactory categoryName.
	SystemOrganization removeEmptyCategories.