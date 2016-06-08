utilities
findClassesForCategories: aCollection

	aCollection isEmpty 
		ifTrue: [ ^ self baseClass subclasses asSet ].
	