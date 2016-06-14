accessing method dictionary
basicAddSelector: selector withMethod: compiledMethod 

	| methodToAdd |
	methodToAdd := self looksLikeUserStoryHeir
		ifTrue: [	AcceptitScenarioWrapper forMethod: compiledMethod]
		ifFalse: [compiledMethod].
	super basicAddSelector: selector withMethod: methodToAdd.