as yet unclassified
testArgumentParsingWithoutArguments

	|body selectorString variableAssociations|

	body:= 'nothing happens'.
	selectorString:= 'nothing happens'.

	variableAssociations := ACTranslator bindParametersInSelector: selectorString toValuesIn: body.

	self should: [variableAssociations  = (OrderedCollection new)]. 