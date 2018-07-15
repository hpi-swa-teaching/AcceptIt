tests
testStepdefMatchArg

	|stepdef|
	stepdef:= 
	'given has :number opportunities
	
	^ self.'.
	
	self should: [self match: stepdef with: #method].
