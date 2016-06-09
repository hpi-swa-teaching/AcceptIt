parsing
annotatedTree: aString

	|evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: aString startingFrom: self annotatedRule.
	(match == false) 
		ifTrue: [
			^false
			]
		ifFalse: [
			^evaluator value: match
			]       