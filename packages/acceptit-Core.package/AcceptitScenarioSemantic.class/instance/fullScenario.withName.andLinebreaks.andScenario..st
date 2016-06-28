as yet unclassified
fullScenario:  aNode 
withName: aName 
andLinebreaks: linebreaks 
andScenario: aScenario

	|codeDictionary|
	codeDictionary := Dictionary new.
	codeDictionary at: #name put: aName interval contents.
	self value: linebreaks.
	codeDictionary at: #codelines put: (self value: aScenario).
	^ self buildCodeFrom: codeDictionary  