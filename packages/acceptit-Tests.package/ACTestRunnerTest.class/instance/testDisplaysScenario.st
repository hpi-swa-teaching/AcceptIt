as yet unclassified
testDisplaysScenario
	
	|scenarioList|
	ACReadMeFactory executeReadMe.
	self selectCorrectScenario.
	scenarioList := self scenarioList.
	self assert: self scenarioStringInList  equals: ((scenarioList submorphs first submorphs first getListItem: 1) asString) 