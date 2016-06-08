testing
testFailingStep

	| result expectedStepStatus |
	result := (ACStepExecutionUserStory run: 'failing scenario').
	expectedStepStatus :=  ({'ACStepExecutionUserStory>>#failing scenario' -> #('passed' 'passed' 'failed')} as: Dictionary).
	
	self should: [result hasFailures].
	self shouldnt: [result hasErrors].
	self should: [result stepStatus = expectedStepStatus].
	
