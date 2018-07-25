helpers
stepDictionaryToStepCodeLine: stepDictionary
"This method generates a line of code from the given dictionary, which contains a SINGLE step."
	^String cr, 
		String tab, 'self ',
		stepDictionary first asString, ': ''',
		((stepDictionary second) copyReplaceAll: '''' with: ''''''),
		'''.' 
