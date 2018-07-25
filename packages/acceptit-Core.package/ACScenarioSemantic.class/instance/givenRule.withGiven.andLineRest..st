ohm interface
givenRule: aNode withGiven: given andLineRest: linerest
	
	|result|
	self lastRule: #given.
	result := OrderedCollection new add: #given; 
		add: (linerest interval contents withBlanksTrimmed replaceAll: '''' with: ''''''); 
		yourself.
	^result
	
 