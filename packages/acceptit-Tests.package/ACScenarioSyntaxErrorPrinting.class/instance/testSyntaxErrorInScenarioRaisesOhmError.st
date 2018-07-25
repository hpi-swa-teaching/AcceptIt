tests
testSyntaxErrorInScenarioRaisesOhmError
	
	|compiler scenario|
	compiler := ACScenarioCompiler new.
	scenario := ACScenarioFactory erroneousScenario.
	self should: [compiler compile: scenario in: nil notifying: nil ifFail: [nil]] raise: OhmMatchFailure.