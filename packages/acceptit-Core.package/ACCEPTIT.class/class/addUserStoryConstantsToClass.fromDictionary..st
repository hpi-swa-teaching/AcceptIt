as yet unclassified
addUserStoryConstantsToClass: aClass fromDictionary: aDictionary 
	#( title role purpose means ) do: [:property | 
		self createConstant: property forUserStory: aClass withValue: (aDictionary at: property)].