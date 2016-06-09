as yet unclassified
testScenarioCompilation

	|scenario acMethod stMethod scenarioDecompiled |
	scenario := 'hello

Given I have a web site
When I go to the web site
Then I see "Hello World"'.
	
	scenarioDecompiled := 'hello
			<scenario>
			self given: ''I have a web site''.
			self when: ''I go to the web site''.
			self then: ''I see "Hello World"''.'.
	
	acMethod := AcceptitScenarioCompiler new compile:  scenario  in: self class classified: nil notifying: nil ifFail: [].
	stMethod := Compiler new compile: scenarioDecompiled in: self class classified: nil notifying: nil ifFail: [].
	
	self 
		should: [acMethod selector = stMethod selector];
		should: [acMethod decompileString = stMethod decompileString].