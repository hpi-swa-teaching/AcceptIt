as yet unclassified
givenRule: aNode withGiven: given andLineRest: linerest
	
	|result|
	self lastRule: #given.
	result := OrderedCollection new add: #given; add: (linerest interval contents withBlanksTrimmed); add: (self currentLine); yourself.
	^ result
	
 