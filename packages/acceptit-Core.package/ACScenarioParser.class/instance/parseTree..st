parsing
parseTree: aString

	|evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: aString startingFrom: self treeRule.
	(match == false) 
		ifTrue: [
			^false
			]
		ifFalse: [
			^evaluator value: match
			]       