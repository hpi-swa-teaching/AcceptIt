accessing
selectorForString: aString prefixed: aSymbol

	^ (aSymbol, 
		aString
			asCamelCase)  asLegalSelector asSymbol