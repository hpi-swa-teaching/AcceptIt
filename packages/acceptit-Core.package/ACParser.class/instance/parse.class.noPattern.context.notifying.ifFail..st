parsing
parse: sourceStream class: cls noPattern: pat context: ctx notifying: req ifFail: block 
	
	| codeToParse |
	self halt.
	codeToParse := self translateCode: sourceStream.
	self halt.
	^ self stdParser 
		parse: codeToParse
		class: cls
		noPattern: pat
		notifying: req
		ifFail: block