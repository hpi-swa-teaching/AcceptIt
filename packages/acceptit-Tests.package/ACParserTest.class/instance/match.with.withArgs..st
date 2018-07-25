helpers
match: aString with: aRule withArgs: args

	|match parser|
	parser := self parserClassToTest new.
	match := (parser grammar) match: aString startingFrom: aRule.
	^(match succeeded)