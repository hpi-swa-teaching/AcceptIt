compiling
compile: origCode in: cls classified: aCategory notifying: notify ifFail: failBlock

	| translatedCode evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: origCode startingFrom: self startRule.  
	(match failed) 
		ifFalse: [
			translatedCode := (self buildCode: (evaluator value: match)) readStream.
			Transcript show: translatedCode contents.
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