as yet unclassified
bindParametersInCollection: aCollection toValuesIn: aString

	|result runString|
	
	result := OrderedCollection new.
	runString := aString.
	1 to: aCollection size - 1 by: 2 do: [:i | 
		[:prev :parameter :next | |var secondLength |
			next isEmpty 
				ifTrue: [secondLength := runString size]
				ifFalse: [secondLength := (runString findString: next) - 1].
			var := runString copyFrom: prev size + 1 to: secondLength.
			runString := runString allButFirst: prev size + var size.
			result add: parameter  -> var]
		value: (aCollection at: i)
		value: (aCollection at: i + 1)
		value: (aCollection at: i + 2)]	.

	^ result