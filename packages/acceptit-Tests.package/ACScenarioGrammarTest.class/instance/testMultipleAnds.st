as yet unclassified
testMultipleAnds
"This only tests if the semantic throws exceptions so far"
	|match|
	match := ACScenarioGrammar match: self scenarioStringWithMultipleAnds startingFrom: #fullScenario.
	self assert: self dictionaryString equals: ((ACScenarioGrammar synthesizedAttribute: ACScenarioSemantic new) value: match) asString.