parsing
parseSelector: aStringOrText
	
	|translatedMethod|
	tempString := aStringOrText.
	translatedMethod := self translateCode: aStringOrText.
	^ translatedMethod asString lines first