dictionary helpers
statementsFor: aVerb and: ands

	|statements andStatements|
	
	statements := OrderedCollection new.
	statements add: (self value: aVerb).
	andStatements := self value: ands.
	andStatements do: [:each| statements add: each].

	^statements
