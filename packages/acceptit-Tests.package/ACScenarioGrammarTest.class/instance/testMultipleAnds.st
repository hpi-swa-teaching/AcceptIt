tests
testMultipleAnds
	
	|match parsedDictionary|
	match := ACScenarioGrammar match: self scenarioStringWithMultipleAnds startingFrom: #fullScenario.
	parsedDictionary := (ACScenarioGrammar synthesizedAttribute: ACScenarioSemantic new) value: match.
	self assert: self dictionaryString equals: parsedDictionary asString.