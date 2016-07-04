parsing
parse: sourceStream class: cls noPattern: pat context: ctx notifying: req ifFail: block 
	
	
	
	| codeToParse evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar match: (sourceStream contents) startingFrom: self startRule.      
	(match failed)
		ifTrue: [
			codeToParse := sourceStream readStream "fallback. especially for St-classes"]
		ifFalse: [
			codeToParse := self buildCode: (evaluator value: match). 
			codeToParse := codeToParse readStream.].

	^ self stdParser 
		parse: codeToParse
		class: cls
		noPattern: pat
		context: ctx
		notifying: req
		ifFail: block