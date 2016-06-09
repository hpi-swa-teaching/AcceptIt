as yet unclassified
setTestCasePassedFor: aTestCase

	self setStepStatus: #passed for: aTestCase.
	passed add: aTestCase.