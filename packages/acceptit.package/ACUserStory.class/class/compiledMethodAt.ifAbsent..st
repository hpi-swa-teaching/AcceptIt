accessing method dictionary
compiledMethodAt: selector ifAbsent: aBlock

	| key |
	key := selector asSymbol.
	^ self scenarioAndMethodDict
		at: key
		ifAbsent: [super compiledMethodAt: key ifAbsent: aBlock]