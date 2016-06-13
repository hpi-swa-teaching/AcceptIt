as yet unclassified
testArgumentParsingWithASingleArgument

	|body selectorString variableAssociations|

	body:= 'see Hello World'.
	selectorString:= 'see :aString'.

	variableAssociations := AcceptitTranslator bindParametersInSelector: selectorString toValuesIn: body.

	self should: [variableAssociations  = {':aString' -> 'Hello World'} asOrderedCollection].