parsing
parse: textOrStream in: aClass notifying: req

	| string match evaluator translatedCode|
	string := textOrStream isStream ifTrue: [textOrStream contents] ifFalse: [textOrStream].
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: string startingFrom: self startRule.
	(match failed) ifTrue: [
		^super parse: string in: aClass notifying: req].
	translatedCode := self buildCode: (evaluator value: match).
	^super parse: translatedCode in: aClass notifying: req