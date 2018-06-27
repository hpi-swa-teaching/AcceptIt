translation
buildScenarioFrom: aDictionary

	|code|
	
	code := ((aDictionary at: #name) copyReplaceAll: (String space) with: ''), String cr,  String tab, '<scenario>'.
	(aDictionary at: #codelines ) do: [ :verbStatements|
		verbStatements do: [:line|
			code := code , (self stepDictionaryToStepCodeLine: line)]].
	^code