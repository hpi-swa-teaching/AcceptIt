ohm interface
scenario: aNode 
withGiven: aGivenRule andLinebreak: linebreak1 
andAndLinebreak: givenAnds
andWhen: aWhenRule andLinebreak: linebreak2
andAndLinebreak: whenAnds
andThen: aThenRule  
andLinebreakAnd: thenAnds

	^OrderedCollection new
		add: (self statementsFor: aGivenRule and: givenAnds);
		add: (self statementsFor: aWhenRule and: whenAnds);
		add: (self statementsFor: aThenRule and: thenAnds);
		yourself.
