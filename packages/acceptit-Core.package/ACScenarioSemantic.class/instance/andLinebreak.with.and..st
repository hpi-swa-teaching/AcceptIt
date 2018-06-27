ohm interface
andLinebreak: aNode with: andRule  and: linebreak

	|andResult|
	andResult := self value: andRule.
	self value: linebreak.
	^andResult  