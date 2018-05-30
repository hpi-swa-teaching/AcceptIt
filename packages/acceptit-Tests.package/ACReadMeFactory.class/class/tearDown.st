as yet unclassified
tearDown
	(Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed) removeFromSystemUnlogged.
	(Smalltalk classNamed: 'MySuperCalculatorTESTLibrary') removeFromSystemUnlogged.
	SystemOrganization removeCategory: ACUserStoryFactory categoryName.
	SystemOrganization removeEmptyCategories.