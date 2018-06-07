as yet unclassified
testReadMePassesAndThenFails
	|bar button|
	ACReadMeFactory executeReadMe.
	self selectCorrectScenario.
	button := self subject findByLabel: 'Run Selected'.
	button click.
	bar := self subject findByClass: PluggableTextMorphPlus.
	self assert: Color green equals: bar color.
	ACReadMeFactory addFailingSteps.
	button click.
	self assert: Color yellow equals: bar color.
	ACReadMeFactory tearDown.