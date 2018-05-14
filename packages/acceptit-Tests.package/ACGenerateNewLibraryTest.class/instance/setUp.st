setUp and tearDown
setUp
	ACLibrary generateNewLibrary: self libraryName asSymbol.
	self generatedLibrary: (Smalltalk classNamed: self libraryName, self librarySuffix).