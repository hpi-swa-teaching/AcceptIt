user story creation
named: aNameSymbol
purpose: purposeString
role: roleString
means: meansString
category: aCategory

	|klass|		
	klass := self subclass: aNameSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory.
	klass purpose: purposeString; role: roleString; means: meansString.
	
	^ klass