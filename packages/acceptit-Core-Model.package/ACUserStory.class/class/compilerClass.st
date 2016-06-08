behavior-compiling
compilerClass
		
	^ self looksLikeUserStoryHeir
		ifTrue: [	AcceptitScenarioCompiler]
		ifFalse: [super compilerClass]
