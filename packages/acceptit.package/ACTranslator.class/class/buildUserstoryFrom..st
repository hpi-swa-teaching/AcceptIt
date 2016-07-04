translation
buildUserstoryFrom: aDictionary

	|code|
	code := 'ACUserStory named: #', (aDictionary at: #title), String cr, 
				'purpose: ''', (aDictionary at: #purpose), '''', String cr,
				'role: ''', (aDictionary at: #role), '''', String cr,
				'means: ''', (aDictionary at: #means), ''''.
				
	^code