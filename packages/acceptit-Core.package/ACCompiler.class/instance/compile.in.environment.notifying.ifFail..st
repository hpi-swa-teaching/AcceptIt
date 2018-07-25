compiling
compile: textOrStream in: aClass environment: anEnvironment notifying: aRequestor ifFail: failBlock 

	|translatedCode|
	translatedCode := self translateCode: textOrStream.
	^Compiler new
		compileCue: (CompilationCue
			source: translatedCode
			class: aClass
			environment: anEnvironment
			requestor: aRequestor)
		noPattern: false
		ifFail: failBlock