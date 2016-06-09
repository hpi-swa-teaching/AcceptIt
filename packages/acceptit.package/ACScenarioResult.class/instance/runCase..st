as yet unclassified
runCase: aTestCase
	| testCasePassed |
	testCasePassed := true.
	
	[[aTestCase runCase] 
		on: self class failure
		do: [:failure | 
			self setTestCaseFailedFor: aTestCase.
			testCasePassed := false.
			failure return: false]]
				on: self class error
				do:	[:error |
						self setTestCaseErrorFor: aTestCase.
						testCasePassed := false.
						error return: false].
	testCasePassed ifTrue: [self setTestCasePassedFor: aTestCase]