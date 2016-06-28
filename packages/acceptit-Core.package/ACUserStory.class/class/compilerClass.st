behavior-compiling
compilerClass
		
	^ self looksLikeUserStoryHeir
		ifTrue: [	ACScenarioCompiler]
		ifFalse: [super compilerClass]
