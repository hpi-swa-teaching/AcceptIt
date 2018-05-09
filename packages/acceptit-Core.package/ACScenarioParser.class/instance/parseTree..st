parsing
parseTree: aString

	|evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: aString startingFrom: self treeRule.
	match succeeded
		ifTrue: [^evaluator value: match]
		ifFalse: [^false]       