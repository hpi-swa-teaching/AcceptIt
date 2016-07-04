as yet unclassified
userstory: aNode 
withTitle: title andLinebreak: linebreaker1 
andPurpose: purpose andLinebreaker: linebreaker2 
andRole: role andLinebreaker: linebreak3 
andMeans: means

	|aDictionary|
	aDictionary := Dictionary new.
	aDictionary at: #title put: (self value: title).
	aDictionary at: #purpose put: (self value: purpose).
	aDictionary at: #role put: (self value: role).
	aDictionary at: #means put: (self value: means).
	
	^aDictionary