tests
testStepdefMatch

	|stepdef|
	stepdef:= 
	'(given) is a User
	
	^ self.'.
	
	self should: [self match: stepdef with: #method].
