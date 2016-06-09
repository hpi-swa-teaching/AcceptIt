utilities
browseToStepImplementation

	|  step parsedScenario linesWithPrefix sc parser |
	
	stepIndex < 3 ifTrue:[^nil]."no browsing for title and empty line"
	
	sc := scenarios at: scenarioIndex.
	parser := AcceptitScenarioParser new.
	parsedScenario := parser parseTree: (( sc class compiledMethodAt: sc selector) getSource) asString.
	linesWithPrefix := OrderedCollection new.
	
	(parsedScenario allButFirst: 2) do: [:arr | 
		arr do: [:item | 
			item isSymbol ifFalse:[linesWithPrefix add: {arr at: 1. item}]]]. 
	
	step := sc
		methodForVerb: ((linesWithPrefix at: stepIndex - 2) at: 1)
		andStep:  ((linesWithPrefix at: stepIndex - 2) at: 2) asString.
	
	self systemNavigation browseAllImplementorsOf: step selector localTo: step methodClass .
	
		

