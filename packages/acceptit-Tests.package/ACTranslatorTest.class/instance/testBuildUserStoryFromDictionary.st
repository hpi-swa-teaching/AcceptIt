tests
testBuildUserStoryFromDictionary
	|userStory|
	userStory := ACTranslator buildUserstoryFrom: self userStoryDictionary.
	self assert: self userStoryMethodCall equals: userStory.
