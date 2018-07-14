parsing
translateCode: origCode

	|evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: origCode startingFrom: self startRule.  
	^ match succeeded 
		ifTrue: [(self buildCode: (evaluator value: match))]
		ifFalse: [self handleParsingError: match with: origCode]