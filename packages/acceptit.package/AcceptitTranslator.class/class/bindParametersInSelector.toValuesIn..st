as yet unclassified
bindParametersInSelector:aSelector toValuesIn: aString

	^ AcceptitTranslator bindParametersInCollection: (self buildSelectorPartsFromString: aSelector) toValuesIn: aString
