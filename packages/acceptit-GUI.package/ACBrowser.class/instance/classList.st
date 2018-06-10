accessing-ui
classList

	^ self class listClassesHierarchically
		ifTrue: [self hierarchicalClassList]
		ifFalse: [self defaultClassList].