as yet unclassified
findClassesForCategory

	^ self hasSystemCategorySelected
		ifFalse: [Array new]
		ifTrue: [(((systemOrganizer listAtCategoryNamed: self selectedSystemCategory)
			collect: [ :each | Smalltalk globals valueOf: each ])
			select: [:each | each inheritsFrom: self baseClass])
			collect: [:each | each asString]].