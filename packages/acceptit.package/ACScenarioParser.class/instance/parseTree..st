parsing
parseTree: aString

	|evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: aString startingFrom: self treeRule.
	(match failed == false) 
		ifTrue: [
			^false
			]
		ifFalse: [
			^evaluator value: match
			]       