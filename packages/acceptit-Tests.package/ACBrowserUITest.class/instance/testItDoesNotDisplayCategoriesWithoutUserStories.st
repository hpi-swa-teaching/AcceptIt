setUp and tearDown
testItDoesNotDisplayCategoriesWithoutUserStories

	|categoryName listedCategoryNames listSize|
	
	categoryName := 'TestCategoryGenerated'.

	Object subclass: #MyClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: categoryName.
		
	listSize := (self categoryList submorphs first submorphs first) getListSize.
	listedCategoryNames := Set new.
	
	1 to: listSize do: [:index |
		listedCategoryNames add: ((self categoryList submorphs first submorphs first) getListItem: index)].
	
	self assert: false equals: (listedCategoryNames includes: categoryName).
	
	(Smalltalk classNamed: 'MyClass') removeFromSystemUnlogged.
	SystemOrganization removeCategory: categoryName.