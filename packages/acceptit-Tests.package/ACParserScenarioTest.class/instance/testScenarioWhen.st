tests-singleLine
testScenarioWhen

	|when|
	when := 'When I go to the web site'.
	self should: [self match: when with: #whenRule].