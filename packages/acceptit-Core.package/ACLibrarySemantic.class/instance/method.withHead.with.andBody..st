as yet unclassified
method: aNode withHead: aHead with: linebreak andBody: aBody

	|headDictionary|
	headDictionary := self value: aHead.
	headDictionary at: #body put: (self value: aBody).
	^headDictionary