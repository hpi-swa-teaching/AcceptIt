compiling
compile: origCode in: cls classified: aCategory notifying: notify ifFail: failBlock

	| translatedCode evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: origCode startingFrom: self startRule.  
	(match failed) 
		ifFalse: [
			translatedCode := (self buildCode: (evaluator value: match)) readStream.
			]
		ifTrue: [
			translatedCode := origCode asString readStream.
			match failure signal.
			].	
	self from: translatedCode class: cls notifying: notify.
	^ Compiler new
		compile: translatedCode readStream
		in: cls
		notifying: notify
		ifFail: failBlock