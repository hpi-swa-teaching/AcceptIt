setUp and tearDown
setUp
	
	self wantsToTest: ACBrowser open.
	
	ACCEPTIT 
		createUserStory: ACUserStoryFactory userStoryString
		withCategory: ACUserStoryFactory categoryName.
		
	ACReadMeFactory executeReadMeWithNoSpaceInTitle.