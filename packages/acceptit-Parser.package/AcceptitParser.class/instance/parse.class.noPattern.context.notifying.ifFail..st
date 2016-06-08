parsing
parse: sourceStream class: cls noPattern: pat context: ctx notifying: req ifFail: block 
	
	
	
	| codeToParse evaluator match|
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: (sourceStream contents) startingFrom: self startRule.      
	(match == false)
		ifTrue: [
			codeToParse := sourceStream readStream "fallback. especially for St-classes"]
		ifFalse: [
			codeToParse := evaluator value: match. 
			codeToParse := codeToParse readStream.].
	Transcript show: self grammar.  
	Transcript show: codeToParse asString.
	^ self stdParser 
		parse: codeToParse
		class: cls
		noPattern: pat
		context: ctx
		notifying: req
		ifFail: block