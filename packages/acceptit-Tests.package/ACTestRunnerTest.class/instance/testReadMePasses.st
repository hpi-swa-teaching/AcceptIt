as yet unclassified
testReadMePasses
	|bar button|
	ACReadMeFactory executeReadMe.
	self selectCorrectScenario.
	button := self subject findByLabel: 'Run Selected'.
	button click.
	bar := self subject findByClass: PluggableTextMorphPlus.
	self assert: Color green equals: bar color.