as yet unclassified
fullScenario:  aNode 
withName: aName 
andLinebreak: linebreak1 
andLinebreak: linebreak2
andScenario: aScenario

	|codeDictionary|
	codeDictionary := Dictionary new.
	codeDictionary at: #name put: aName interval contents.
	self value: linebreak1.
	self value: linebreak2.
	codeDictionary at: #codelines put: (self value: aScenario).
	^ self buildCodeFrom: codeDictionary  