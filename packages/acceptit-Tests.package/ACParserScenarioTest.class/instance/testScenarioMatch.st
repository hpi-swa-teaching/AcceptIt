tests-Scenario
testScenarioMatch

	|scenario|
	scenario := 
'Hello World

Given I have a web site
When I go to the web site
Then I see ''Hello World'''.
	self should: [self match: scenario with: #fullScenario].
