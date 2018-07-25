as yet unclassified
testDisplaysUserStory
	
	ACReadMeFactory executeReadMe.
	self selectCorrectScenario.
	self assert: ACUserStoryFactory userStoryTitleTrimmed equals: self firstItemInClassList asString.
	ACReadMeFactory tearDown.