tests-singleLine
testScenarioAnd

	|and|
	and:= 'And I have a web site'.
	self should: [self match: and with: #andRule].	