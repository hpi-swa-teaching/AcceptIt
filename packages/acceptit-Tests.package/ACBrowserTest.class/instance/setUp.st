as yet unclassified
setUp

	self browser: ACBrowser new.
	
	ACCEPTIT 
		createUserStory: ACUserStoryFactory userStoryString 
		withCategory: ACUserStoryFactory categoryName.