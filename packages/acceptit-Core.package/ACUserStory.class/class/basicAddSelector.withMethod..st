accessing
basicAddSelector: selector withMethod: compiledMethod 

	| methodToAdd |
	methodToAdd := self looksLikeUserStoryHeir
		ifTrue: [	ACScenarioWrapper forMethod: compiledMethod]
		ifFalse: [compiledMethod].
	super basicAddSelector: selector withMethod: methodToAdd.