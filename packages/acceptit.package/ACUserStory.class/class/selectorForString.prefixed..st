accessing
selectorForString: aString prefixed: aSymbol

	^ (aSymbol, 
		aString 
			withoutLeadingSubject 
			withLeadingAuxiliaryNormalized 
			asCamelCase)  asLegalSelector asSymbol