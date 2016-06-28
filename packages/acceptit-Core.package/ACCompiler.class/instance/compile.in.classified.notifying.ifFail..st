compiling
compile: origCode in: cls classified: aCategory notifying: notify ifFail: failBlock

	| translatedCode evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: origCode startingFrom: self startRule.  
	(match == false) 
		ifFalse: [
			translatedCode := (evaluator value: match) readStream
			]
		ifTrue: [
			translatedCode := origCode asString readStream.
			].	
	self from: translatedCode class: cls notifying: notify.
	^ Compiler new
		compile: translatedCode readStream
		in: cls
		notifying: notify
		ifFail: failBlock