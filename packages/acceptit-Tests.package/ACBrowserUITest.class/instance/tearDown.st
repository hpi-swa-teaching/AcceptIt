setUp and tearDown
tearDown

	self deleteMorphs.
	
	(Smalltalk classNamed: ACUserStoryFactory userStoryTitleTrimmed) removeFromSystemUnlogged.
	SystemOrganization removeCategory: ACUserStoryFactory categoryName.
	SystemOrganization removeEmptyCategories.