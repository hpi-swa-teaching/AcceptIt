*acceptit-Core
withoutLeadingSubject

	| s |
	s := self withBlanksCondensed.
	^ (s asLowercase beginsWithAnyOf: #( i he she it you we they ))
		ifTrue: [	s copyAfter: Character space]
		ifFalse: [s]