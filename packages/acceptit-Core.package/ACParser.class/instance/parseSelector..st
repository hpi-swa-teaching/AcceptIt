parsing
parseSelector: aString

	| codeToParse evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: aString startingFrom: self startRule.      
	(match == false)
		ifTrue: [
			codeToParse := aString "fallback. especially for St-classes".
			^self stdParser parseSelector: codeToParse ].
	codeToParse := evaluator value: match. 
	^self stdParser parseSelector: codeToParse 