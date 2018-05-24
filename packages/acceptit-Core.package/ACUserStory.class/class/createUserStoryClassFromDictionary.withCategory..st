user story creation
createUserStoryClassFromDictionary: aDictionary withCategory: aCategory
	
	|createdClass|
	createdClass := self createSubclass: (aDictionary at: #title) withCategory: aCategory.
	self addUserStoryConstantsToClass: createdClass fromDictionary: aDictionary.
	^createdClass