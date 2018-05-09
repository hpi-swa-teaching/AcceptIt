as yet unclassified
setUp
	ACLibrary generateNewLibrary: self libraryName asSymbol.
	generatedLibrary := Smalltalk classNamed: (self libraryName, self librarySuffix).