acceptit tests
setTestCaseFailedFor: aTestCase

	self setStepStatus: #failed for: aTestCase.
	failures add: aTestCase. 