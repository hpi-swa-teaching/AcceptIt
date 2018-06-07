as yet unclassified
testDisplaysUserStory
	
	|classList|
	ACReadMeFactory executeReadMe.
	self selectCorrectScenario.
	classList := self classList.
	self assert: ACUserStoryFactory userStoryTitleTrimmed equals: ((classList submorphs first submorphs first getListItem: 1) asString).
	ACReadMeFactory tearDown.