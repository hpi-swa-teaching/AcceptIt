as yet unclassified
testArgumentParsingWithSpecialCharacters

	|body selectorString variableAssociations|

	body := 'see potat:oe on the 2 . screen f§§rt'.
	selectorString := 'see :thing on the :number screen :name'.

	variableAssociations := ACTranslator bindParametersInSelector: selectorString toValuesIn: body.
	
	self assert: {':thing'->'potat:oe' . ':number'->'2 .'. ':name'->'f§§rt'} asOrderedCollection
		equals: variableAssociations.