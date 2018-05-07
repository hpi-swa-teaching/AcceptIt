running
mapFromString: aString toStepMethodWithVerb: aSymbol
	
	(self class new methodsForVerb: aSymbol) do: [:method |
		method pragmas do: [:pragma | 
			((pragma keyword = #stepMatch:) and: 
				[(pragma arguments first) match: aString])
				ifTrue: [^ method]]].
	^ self notYetImplemented