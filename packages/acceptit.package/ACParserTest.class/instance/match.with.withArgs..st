helpers
match: aString with: aRule withArgs: args


	|match parser|
	parser := self parserClassToTest new.
	match := (parser grammar) matchContents: aString startingFrom: aRule.
	Transcript show: match.
	Transcript show: (match ~= false).
	^(match ~= false)