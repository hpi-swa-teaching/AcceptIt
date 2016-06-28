tests-Scenario
testScenarioInvalidSyntaxMatch
|scenarioInvalidSyntax|

	scenarioInvalidSyntax:= 'Gvien I have a web site
		Wehn I go to the web site
		Tehn I see "Hello World"'.
	self shouldnt: [self match: scenarioInvalidSyntax with: #fullScenario].
		