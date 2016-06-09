as yet unclassified
matchContents: string startingFrom: startRuleName
	
	|result|
	result := super match: string startingFrom: startRuleName.
	Transcript show: result failed.
	^(result failed)
		ifTrue: [false]
		ifFalse: [result]