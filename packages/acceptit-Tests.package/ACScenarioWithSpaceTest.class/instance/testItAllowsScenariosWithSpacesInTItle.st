as yet unclassified
testItAllowsScenariosWithSpacesInTItle
	|ac method|
	ACReadMeFactory executeReadMe.
	ac := Smalltalk classNamed: 'ACCalculatorUserStory'.
	method := ac compiledMethodAt: #mvus.
	self assert: 'm vus' equals: method getSource asString lines first.
	ACReadMeFactory tearDown.
	

	