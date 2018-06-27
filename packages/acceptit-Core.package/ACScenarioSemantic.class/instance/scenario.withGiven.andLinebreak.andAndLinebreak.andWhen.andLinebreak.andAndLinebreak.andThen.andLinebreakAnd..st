as yet unclassified
scenario: aNode 
withGiven: aGivenRule andLinebreak: linebreak1 
andAndLinebreak: and1
andWhen: aWhenRule andLinebreak: linebreak2
andAndLinebreak: and2
andThen: aThenRule  
andLinebreakAnd: and3

	|return givens whens thens andResult1 andResult2 andResult3|
	return := OrderedCollection new.
	givens := OrderedCollection new.
	givens add: (self value: aGivenRule).
	self value: linebreak1.
	andResult1 := self value: and1.
	andResult1 do: [:each| givens add: each].
	return add: givens.
	whens := OrderedCollection new.
	whens add: (self value: aWhenRule).
	self value: linebreak2.
	andResult2 := self value: and2.
	andResult2 do:[:each|whens add: each].
	return add: whens.
	thens := OrderedCollection new.
	thens add: (self value: aThenRule).
	andResult3 := self value: and3.
	andResult3 do:[:each| thens add: each].
	return add: thens.
	^return
