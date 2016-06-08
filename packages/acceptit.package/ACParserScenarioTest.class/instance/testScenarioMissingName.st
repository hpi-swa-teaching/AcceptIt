tests-Scenario
testScenarioMissingName
|scenario|

	scenario:= '	Given I have a web site
	When I go to the web site
	Then I see "Hello World"'.
	self shouldnt: [self match: scenario with: #fullScenario].
