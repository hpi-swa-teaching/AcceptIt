parsing
parseSelector: aString

	| codeToParse evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: aString startingFrom: self startRule.      
	(match failed)
		ifTrue: [
			codeToParse := aString "fallback. especially for St-classes".
			^self stdParser parseSelector: codeToParse ].
	codeToParse := self buildCode: (evaluator value: match). 
	^self stdParser parseSelector: codeToParse 