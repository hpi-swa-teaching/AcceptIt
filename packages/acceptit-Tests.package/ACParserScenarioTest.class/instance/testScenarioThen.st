tests-singleLine
testScenarioThen
	
	|then|
	then := 'Then I see "Hello World"'.
	
	self should: [self match: then with: #thenRule].	