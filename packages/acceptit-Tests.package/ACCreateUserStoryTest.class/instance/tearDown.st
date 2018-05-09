as yet unclassified
tearDown
	super tearDown.
	(Smalltalk classNamed: 'ACCalculatorUserStory') removeFromSystemUnlogged.
	SystemOrganization removeCategory: 'acceptitTest-calculator'.