as yet unclassified
setUp

	self browser: ACBrowser new.
	
	ACUserStory 
		createUserStory: ACUserStoryFactory userStoryString 
		withCategory: ACUserStoryFactory categoryName.