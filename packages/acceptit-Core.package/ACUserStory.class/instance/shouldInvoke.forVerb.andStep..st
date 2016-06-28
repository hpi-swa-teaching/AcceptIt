internal verbs
shouldInvoke: method forVerb: verbSymbol andStep: aString

	self registerCurrentInvokationOf: method forVerb: verbSymbol andStep: aString.
	
	^ (self skipSymbols includes: verbSymbol) not