parser-emulation
parseSelectors: aStringOrText

	self tempString: aStringOrText.
	^aStringOrText asString lines first