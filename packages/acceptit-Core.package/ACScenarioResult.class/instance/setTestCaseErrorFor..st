as yet unclassified
setTestCaseErrorFor: aTestCase

	self setStepStatus: #error for: aTestCase.
	errors add: aTestCase. 

	