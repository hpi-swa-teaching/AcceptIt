tests
testArgumentParsingWithASingleArgument

	|body selectorString variableAssociations|

	body := 'see Hello World'.
	selectorString := 'see :aString'.

	variableAssociations := ACTranslator bindParametersInSelector: selectorString toValuesIn: body.

	self should: [variableAssociations  = {':aString' -> 'Hello World'} asOrderedCollection].