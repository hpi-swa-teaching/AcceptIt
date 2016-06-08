as yet unclassified
parameterStringFor: aString

	^ String streamContents: [:stream |
		(aString findTokens: $:) allButFirst do: [:sub |
			stream nextPut: $:;
				nextPutAll: (sub upTo: $ );
				space].
		(aString includes: $:) ifTrue: [stream nextPut: $|]]
