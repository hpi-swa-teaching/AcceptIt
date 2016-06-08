as yet unclassified
matchContents: string startingFrom: startRuleName
	
	|result|
	result := super match: string startingFrom: startRuleName.
	^(result failed)
		ifTrue: [false]
		ifFalse: [result]