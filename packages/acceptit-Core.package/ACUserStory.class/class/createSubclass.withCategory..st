user story creation
createSubclass: aName withCategory: aCategory

	^self subclass: aName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory