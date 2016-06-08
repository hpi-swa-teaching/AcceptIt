testing
testErrorStep

	| result expectedStepStatus |
	result := (ACStepExecutionUserStory run: 'error scenario').
	expectedStepStatus :=  ({'ACStepExecutionUserStory>>#error scenario' -> #('passed' 'error' 'skipped')} as: Dictionary).
	Transcript show: result stepStatus.
	Transcript show: expectedStepStatus.
	self should: [result hasErrors].
	self shouldnt: [result hasFailures].
	self should: [ result stepStatus = expectedStepStatus ].