compiling
compile: textOrStream in: aClass environment: anEnvironment notifying: aRequestor ifFail: failBlock 

	| translatedCode evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: textOrStream startingFrom: self startRule.  
	(match failed) 
		ifFalse: [
			translatedCode := (self buildCode: (evaluator value: match)) readStream.
			]
		ifTrue: [
			translatedCode := textOrStream asString readStream.
			].	
	^Compiler new
		compileCue: (CompilationCue
			source: translatedCode
			class: aClass
			environment: anEnvironment
			requestor: aRequestor)
		noPattern: false
		ifFail: failBlock