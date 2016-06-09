public access
parse: aStream class: aClass noPattern: noPattern context: ctxt notifying: req ifFail: aBlock
	
	
	| match evaluator translatedCode|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: (aStream contents) startingFrom: self startRule.  
	(match == false) ifTrue: [
		^super parserClass new parse: aStream readStream class: aClass noPattern: noPattern context: ctxt notifying: req ifFail: aBlock].
	translatedCode := evaluator value: match.
	^super parserClass new parse: translatedCode readStream class: aClass noPattern: noPattern context: ctxt notifying: req ifFail: aBlock