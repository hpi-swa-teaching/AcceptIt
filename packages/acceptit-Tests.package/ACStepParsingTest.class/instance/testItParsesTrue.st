tests
testItParsesTrue
"This is ugly and method should just be a mock object but mokcing Pragmas seems to be pretty difficult so this will have to do for now"
	|userstory method|
	ACReadMeFactory executeReadMe.
	userstory := (Smalltalk classNamed:'ACCalculatorUserStory') new.
	method := userstory methodForVerb: #then andStep: 'I expect A to be true' .
	self assert: 'true' equals: (userstory buildArgumentsForMethod: method using: 'I expect A to be true') first.
	ACReadMeFactory tearDown.