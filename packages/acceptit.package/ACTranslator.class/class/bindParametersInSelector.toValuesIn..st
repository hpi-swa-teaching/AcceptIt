as yet unclassified
bindParametersInSelector:aSelector toValuesIn: aString

	^ ACTranslator bindParametersInCollection: (self buildSelectorPartsFromString: aSelector) toValuesIn: aString
