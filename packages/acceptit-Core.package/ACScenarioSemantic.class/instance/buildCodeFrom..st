dictionary helpers
buildCodeFrom: aDictionary

	|code|
	code := (aDictionary at: #name), String cr,  String tab, '<scenario>'.
	(aDictionary at: #codelines ) do: [ :line| 
		code := code, String cr, String tab, 'self ', line first asString, ': ''', line second, '''.' 
		].
	^code