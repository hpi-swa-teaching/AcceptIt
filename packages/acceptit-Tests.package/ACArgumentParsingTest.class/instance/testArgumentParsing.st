as yet unclassified
testArgumentParsing

	|body selectorString variableAssociations|

	body:= 'see potatoe on the 2. screen fert'.
	selectorString:= 'see :thing on the :number screen :name'.

	variableAssociations := ACTranslator bindParametersInSelector: selectorString toValuesIn: body.

	self should: [variableAssociations  = {':thing'->'potatoe' . ':number'->'2.'. ':name'->'fert'} asOrderedCollection]. 