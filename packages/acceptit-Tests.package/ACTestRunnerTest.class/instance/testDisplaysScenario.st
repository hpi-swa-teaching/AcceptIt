tests
testDisplaysScenario
	
	ACReadMeFactory executeReadMe.
	self selectCorrectScenario.
	self assert: self scenarioStringInList  equals: self firstItemInScenarioList asString.
	ACReadMeFactory tearDown.