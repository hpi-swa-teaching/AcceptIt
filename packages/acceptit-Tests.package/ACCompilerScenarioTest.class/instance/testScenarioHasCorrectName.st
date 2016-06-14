as yet unclassified
testScenarioHasCorrectName

	|scenario acMethod |
	scenario := 'Here should be the name of the method
		Given I have a web site
		When I go to the web site
		Then I see "Hello World"'.
		
	acMethod := AcceptitScenarioCompiler new compile:  scenario  in: self class classified: nil notifying: nil ifFail: [].
	
	self 
		should: [acMethod selector =  'Here should be the name of the method'].
		 