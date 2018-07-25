parsing
parse: aString withRule: aRule

	|evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: aString startingFrom: aRule.
	match succeeded
		ifTrue: [^evaluator value: match]
		ifFalse: [^false]       