private
createUserStoryClassFromDictionary: aDictionary withCategory: aCategory
	
	|createdClass|
	createdClass := self createUserStorySubclass: (aDictionary at: #title) withCategory: aCategory.
	self addUserStoryConstantsToClass: createdClass fromDictionary: aDictionary.
	^createdClass