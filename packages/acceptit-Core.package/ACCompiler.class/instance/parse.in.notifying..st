parsing
parse: textOrStream in: aClass notifying: req

	| string match evaluator translatedCode|
	string := textOrStream isStream ifTrue: [textOrStream contents] ifFalse: [textOrStream].
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: string startingFrom: self startRule.
	(match == false) ifTrue: [
		^super parse: string in: aClass notifying: req].
	translatedCode := evaluator value: match.
	^super parse: translatedCode in: aClass notifying: req