setUp and tearDown
setUp
	
	self wantsToTest: ACBrowser open.
	
	ACUserStory 
		createUserStory: ACUserStoryFactory userStoryString
		withCategory: ACUserStoryFactory categoryName.