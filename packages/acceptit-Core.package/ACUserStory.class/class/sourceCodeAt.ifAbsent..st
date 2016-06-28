accessing method dictionary
sourceCodeAt: selector ifAbsent: aBlock

	| cMeth |
	cMeth := self scenarioAndMethodDict at: selector asSymbol ifAbsent: [^ aBlock value].
	^ cMeth getSourceFor: cMeth selector in: self