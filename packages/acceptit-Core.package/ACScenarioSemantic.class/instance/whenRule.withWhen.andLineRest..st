ohm interface
whenRule: aNode withWhen: when andLineRest: linerest
	
	|result|
	self lastRule: #when.
	result := OrderedCollection new 
		add: #when; 
		add: (linerest interval contents withBlanksTrimmed replaceAll: '''' with: '''''');
		yourself.
	^ result
	
