parsing
parse: sourceStream class: cls noPattern: pat context: ctx notifying: req ifFail: block 
	
	| codeToParse |
	codeToParse := self translateCode: sourceStream.
	^ self stdParser 
		parse: codeToParse
		class: cls
		noPattern: pat
		notifying: req
		ifFail: block