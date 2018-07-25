tests
testItAllowsScenariosWithSpacesInTItle

	self assert: 'm vus' equals: scenarioMethod getSource asString lines first.
	ACReadMeFactory tearDown.
	

	