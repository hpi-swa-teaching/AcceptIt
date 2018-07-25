tests
testErroneousReadMeFails
	|bar button|
	ACReadMeFactory executeErroneousReadMe.
	self selectCorrectScenario.
	button := self subject findByLabel: 'Run Selected'.
	button click.
	bar := self subject findByClass: PluggableTextMorphPlus.
	self assert: Color red equals: bar color.
	ACReadMeFactory tearDown.