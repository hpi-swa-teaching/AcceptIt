as yet unclassified
testItWorks
	|ac method|
	ACReadMeFactory createUserStory.
	ac := Smalltalk classNamed: 'ACCalculatorUserStory'.
	ACReadMeFactory addScenarioToUs.
	method := ac compiledMethodAt: #mvus.
	self assert: 'm vus' equals: method getSource asString lines first.
	ac removeFromSystemUnlogged.
	SystemOrganization removeEmptyCategories.
	

	