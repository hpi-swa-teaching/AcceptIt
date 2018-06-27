as yet unclassified
thenRule: aNode withThen: then andLineRest: linerest
	
	|result|
	self lastRule: #then.
	result := OrderedCollection new 
		add: #then; add: (linerest interval contents withBlanksTrimmed replaceAll: '''' with: ''''''); 
		yourself.
	^ result
