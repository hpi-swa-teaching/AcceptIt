tests-singleLine
testScenarioGiven

	|given|
	given := 'Given I have a web site'.

	self should: [self match: given with: #givenRule].