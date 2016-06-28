internal verbs
invokeVerb: verbSymbol for: aString

	| method args|
	method := self methodForVerb: verbSymbol andStep: aString.
	
	(self shouldInvoke: method forVerb: verbSymbol andStep: aString)
		ifTrue: [
			args := self class buildArgumentsForMethod: method using: aString.
			^ method valueWithReceiver: self arguments: {args}]
