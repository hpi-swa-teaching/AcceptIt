running
mapFromString: aString toStepMethodWithVerb: aSymbol
	
	(self methodsForVerb: aSymbol) do: [:method |
		method pragmas do: [:pragma | 
			((pragma keyword = #stepMatch:) and: 
				[(pragma arguments first) match: aString withoutLeadingSubject withLeadingAuxiliaryNormalized])
				ifTrue: [^ method]]].
	^ self notYetImplemented