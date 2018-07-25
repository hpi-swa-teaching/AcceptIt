as yet unclassified
testSyntaxErrorInScenarioRaisesOhmError
	
	self should: [ACScenarioCompiler new compile: self erroneousScenario  in: nil notifying: nil ifFail: [nil]]
		raise: OhmMatchFailure.