as yet unclassified
buildCodeFrom: aDictionary

	|headCode tagCode bodyCode|
	headCode := aDictionary at: #tag.
	(aDictionary at: #words) do: [ :word|
		|tempWord|
		tempWord := word value copy.
		(word key == #word) 
			ifTrue: [tempWord at: 1 modify: [:char| char asUppercase]].
		headCode := headCode, tempWord.
		].
	headCode := headCode, 'Args: privateArgsCollection', String cr.
	
	tagCode := String tab, '<stepTag: #', (aDictionary at: #tag), '>', String cr. 
	tagCode := tagCode, String tab, '<stepMatch: '''.
	(aDictionary at: #words) do: [ :word|
		(word key == #parameter) 
			ifTrue: [tagCode := tagCode, '* ']
			ifFalse: [tagCode := tagCode, word value, ' '].
		].
	tagCode := tagCode allButLast, '''>', String cr.  
	tagCode := tagCode, String tab, '<step: '''.
	(aDictionary at: #words) do: [ :word|
		(word key == #parameter) 
			ifTrue: [tagCode := tagCode, ':', word value, ' ']
			ifFalse: [tagCode := tagCode, word value, ' '].
		].
	tagCode := tagCode allButLast, '''>', String cr.
	
	bodyCode := String tab, '['.
	(aDictionary at: #parameters) do: [ :parameter|
		bodyCode := bodyCode,  ':', parameter value, ' '. 
		].	 
	((aDictionary at: #parameters) isEmpty  )ifFalse: [bodyCode := bodyCode, '| '].
	bodyCode := bodyCode, (aDictionary at: #body), ']', 
					String cr,  String tab,  String tab, 
					'valueWithPossibleArgs: privateArgsCollection asArray'.

	^headCode, tagCode, bodyCode  
	 