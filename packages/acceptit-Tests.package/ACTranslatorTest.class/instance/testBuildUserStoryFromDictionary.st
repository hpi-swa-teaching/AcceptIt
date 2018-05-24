as yet unclassified
testBuildUserStoryFromDictionary
	|userStory|
	userStory := ACTranslator buildUserstoryFrom: self userStoryDictionary.
	self assert: self userStoryMethodCall equals: userStory.
