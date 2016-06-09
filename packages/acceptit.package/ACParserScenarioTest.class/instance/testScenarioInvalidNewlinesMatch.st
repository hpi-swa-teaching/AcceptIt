tests-Scenario
testScenarioInvalidNewlinesMatch

|scenarioInvalidNewlines|
	
	scenarioInvalidNewlines := 'Given I have a web site
	
		When I go to the web site
		
		Then I see "Hello World"'.
	self shouldnt: [self match:  scenarioInvalidNewlines with: #fullScenario].
		