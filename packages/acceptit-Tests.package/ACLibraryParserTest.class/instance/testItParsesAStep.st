as yet unclassified
testItParsesAStep
	|result|
	result :=  parser 
					parse: self stepExample 
					class: self class 
					noPattern: false  
					context: nil  
					notifying: nil  
					ifFail: [^nil].
	self assert: MethodNode equals: result class.
	self assert: self compiledStepExample equals: result sourceText.
