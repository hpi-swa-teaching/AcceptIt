parsing
annotatedTree: aString

	|evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: aString startingFrom: self annotatedRule.
	(match failed == false) 
		ifTrue: [
			^false
			]
		ifFalse: [
			^evaluator value: match
			]       