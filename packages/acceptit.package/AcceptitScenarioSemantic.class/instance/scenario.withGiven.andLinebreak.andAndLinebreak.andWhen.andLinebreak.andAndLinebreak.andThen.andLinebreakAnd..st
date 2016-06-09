as yet unclassified
scenario: aNode 
withGiven: aGivenRule andLinebreak: linebreak1 
andAndLinebreak: and1
andWhen: aWhenRule andLinebreak: linebreak2
andAndLinebreak: and2
andThen: aThenRule  
andLinebreakAnd: and3

	|return andResult1 andResult2 andResult3|
	
	return := OrderedCollection new.
	return add: (self value: aGivenRule).
	self value: linebreak1.
	andResult1 := self value: and1.
	(andResult1 isNil) ifFalse: [return add: andResult1].
	return add: (self value: aWhenRule).
	self value: linebreak2.
	andResult2 := self value: and2.
	(andResult2 isNil) ifFalse: [return add: andResult2].
	return add: (self value: aThenRule).
	andResult3 := self value: and3.
	(andResult3 isNil) ifFalse: [return add: andResult3].
	^return
