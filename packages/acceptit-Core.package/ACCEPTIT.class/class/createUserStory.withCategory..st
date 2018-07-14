as yet unclassified
createUserStory: aStory withCategory: aCategory 

	|propertyDictionary|
	propertyDictionary := ACUserStoryParser new parseStoryToDictionary: aStory.
	^self createUserStoryClassFromDictionary: propertyDictionary withCategory: aCategory