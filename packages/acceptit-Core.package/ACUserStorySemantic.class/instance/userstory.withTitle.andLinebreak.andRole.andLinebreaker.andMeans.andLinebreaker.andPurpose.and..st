ohm interface
userstory: aNode 
withTitle: title andLinebreak: linebreaker1
andRole: role andLinebreaker: linebreaker2
andMeans: means andLinebreaker: linebreaker3
andPurpose: purpose and: dott

	|aDictionary|
	aDictionary := Dictionary new.
	aDictionary at: #title put: (self value: title).
	aDictionary at: #purpose put: (self value: purpose).
	aDictionary at: #role put: (self value: role).
	aDictionary at: #means put: (self value: means).
	
	^aDictionary