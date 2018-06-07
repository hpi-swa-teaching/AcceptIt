as yet unclassified
testFailingReadMeFails
	|bar button|
	ACReadMeFactory executeFailingReadMe.
	self classList click.
	self scenarioList click.
	button := self subject findByLabel: 'Run Selected'.
	button click.
	bar := self subject findByClass: PluggableTextMorphPlus.
	self assert: Color yellow equals: bar color.
	ACReadMeFactory tearDown.