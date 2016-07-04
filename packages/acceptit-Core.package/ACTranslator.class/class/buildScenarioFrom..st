translation
buildScenarioFrom: aDictionary

	|code|
	
	code := ((aDictionary at: #name) copyReplaceAll: (String space) with: ''), String cr,  String tab, '<scenario>'.
	(aDictionary at: #codelines ) do: [ :line| 
		code := code, String cr, String tab, 'self ', line first asString, ': ''', ((line second) copyReplaceAll: '''' with: ''''''), '''.' 
		].
	^code