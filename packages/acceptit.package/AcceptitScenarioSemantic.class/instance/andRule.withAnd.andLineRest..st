as yet unclassified
andRule: aNode withAnd: when andLineRest: linerest
	 
	|result|
	self lastRule: (self lastRule).
	result := OrderedCollection new add: (self lastRule); add: (linerest interval contents withBlanksTrimmed; copyReplaceAll: '''' with: '''''' asTokens: false); add: (self currentLine); yourself.
	^ result