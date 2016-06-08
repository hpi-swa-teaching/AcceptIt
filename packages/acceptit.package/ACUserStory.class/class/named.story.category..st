instance creation
named: aName
story: aStoryString
category: aCategory

	^ self
		userStoryNamed: aName 
		story: aStoryString 
		withCategory: aCategory 
		fullText: (aName, String cr, aStoryString)