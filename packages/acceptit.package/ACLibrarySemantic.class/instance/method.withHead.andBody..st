as yet unclassified
method: aNode withHead: aHead andBody: aBody

	|headDictionary|
	headDictionary := self value: aHead.
	headDictionary at: #body put: (aBody interval contents).
	
	^self buildCodeFrom: headDictionary