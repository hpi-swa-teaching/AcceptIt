internal verbs
methodForVerb: aSymbol andStep: aString

	^ [(self verbsMethodCache at: aSymbol)
		at: aString 
		ifAbsentPut: (self mapFromString: aString toStepMethodWithVerb: aSymbol)
	] on: NotYetImplemented do: [:nyi | |resignal|
		resignal := NotYetImplemented new.
		resignal receiverClass: self class selector: nil.
		resignal messageText: aSymbol printString, ' for ', aString.
		nyi resignalAs: resignal.		
	]