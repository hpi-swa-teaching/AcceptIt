as yet unclassified
testArgumentParsingWithoutArguments

	|body selectorString variableAssociations|

	body:= 'nothing happens'.
	selectorString:= 'nothing happens'.

	variableAssociations := AcceptitTranslator bindParametersInSelector: selectorString toValuesIn: body.

	self should: [variableAssociations  = (OrderedCollection new)]. 