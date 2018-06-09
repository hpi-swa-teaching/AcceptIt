as yet unclassified
ItParsesTrue
	
	|ac method|
	ACReadMeFactory executeReadMe.
	ac := (Smalltalk classNamed: 'ACCalculatorUserStory') new.
	method := ac methodForVerb: #then andStep: 'I expect A to be true'.
	self assert: 'true' equals: (ac class buildArgumentsForMethod: method using: 'I expect A to be true') first.
	ACReadMeFactory tearDown.
	
	