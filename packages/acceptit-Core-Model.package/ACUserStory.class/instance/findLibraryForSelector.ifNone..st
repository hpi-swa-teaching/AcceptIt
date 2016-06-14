error handling
findLibraryForSelector: aSelector ifNone: aBlock

	^ self stepLibraries detect: [:lib | lib respondsTo: aSelector]
		ifNone: [aBlock value].
	