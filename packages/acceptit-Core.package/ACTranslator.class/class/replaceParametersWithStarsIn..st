helpers
replaceParametersWithStarsIn: aString

	^ String streamContents: [:stream | | parts |
		(parts := self buildSelectorPartsFromString: aString)
			withIndexDo: [:part :index | 
				index odd 
					ifTrue: [stream nextPutAll: part]
					ifFalse: [
						(index < parts size) ifTrue: [stream nextPut: $*]]]].