as yet unclassified
testMultipleAndsPass
	|bar button|
	ACReadMeFactory executeReadMeWithMultipleAnds.
	self selectCorrectScenario.
	button := self subject findByLabel: 'Run Selected'.
	button click.
	bar := self subject findByClass: PluggableTextMorphPlus.
	self assert: Color green equals: bar color.
	ACReadMeFactory tearDown.