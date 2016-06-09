tests-Scenario
testScenarioInvalidOrderMatch

|scenarioInvalidOrder|

	scenarioInvalidOrder:= 'When I go to the web site
		Given I have a web site
		Then I see "Hello World"'.
	self shouldnt: [self match: scenarioInvalidOrder with: #fullScenario].
		