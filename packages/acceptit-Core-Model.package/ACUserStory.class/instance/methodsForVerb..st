running
methodsForVerb: aSymbol

	^ Array streamContents: [:stream |
		self stepLibraries do: [:lib |
			(Pragma allNamed: #stepTag: in: lib class) do: [:pragma |
				(pragma arguments first = aSymbol) 
					ifTrue: [stream nextPut: pragma method]]]]