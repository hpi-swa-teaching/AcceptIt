testing
testPassingStep

	| result expectedStepStatus |
	result := (ACStepExecutionUserStory run: 'passing scenario').
	expectedStepStatus :=  ({'ACStepExecutionUserStory>>#passing scenario' -> #('passed' 'passed' 'passed' 'passed')} as: Dictionary).
	
	self should: [result hasPassed].
	self shouldnt: [result hasFailures].
	self shouldnt: [result hasErrors].
	self should: [result stepStatus = expectedStepStatus].
	
