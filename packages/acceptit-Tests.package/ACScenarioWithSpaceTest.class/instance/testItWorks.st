as yet unclassified
testItWorks
	|ac method|
	ACReadMeFactory createUserStory.
	ACReadMeFactory addScenarioToUs.
	ac := Smalltalk classNamed: 'ACCalculatorUserStory'.
	method := ac compiledMethodAt: #mvus.
	self assert: 'm vus' equals: method getSource asString lines first.
	ac removeFromSystemUnlogged.
	SystemOrganization removeEmptyCategories.
	

	