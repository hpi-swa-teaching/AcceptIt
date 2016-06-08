as yet unclassified
linebreak: aNode with: aLinebreak

	self currentLine: (self currentLine) + 1.
	^aLinebreak interval contents 