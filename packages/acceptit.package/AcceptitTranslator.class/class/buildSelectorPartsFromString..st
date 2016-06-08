as yet unclassified
buildSelectorPartsFromString: aString

	^ Array streamContents: [:stream |	
		"extract the parameters (start with : )"
		(aString findTokens: $:) withIndexDo: [:e :i |
			i ~= 1 
				ifTrue: [ |parameter|
					parameter := e upTo: $ .
					stream 
						nextPut: ':', parameter; "parameter"
						nextPut: (e allButFirst: parameter size)] "rest"
				ifFalse: [stream nextPut: e "start of selector"]]].