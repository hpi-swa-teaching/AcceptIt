tests-Scenario
testParseTree
	|parser methodString|
	parser := ACScenarioParser new.
	methodString := self correctUserStory.
	self shouldnt: [parser parseTree: methodString = false]