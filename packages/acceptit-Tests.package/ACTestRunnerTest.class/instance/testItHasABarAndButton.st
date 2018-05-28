as yet unclassified
testItHasABarAndButton
	|bar button|
	button := self subject findByLabel: 'Run Selected'.
	bar := self subject findByClass: PluggableTextMorphPlus.
	self assert: 'Run Selected' equals: button label.
	self assert: [nil ~= bar color].