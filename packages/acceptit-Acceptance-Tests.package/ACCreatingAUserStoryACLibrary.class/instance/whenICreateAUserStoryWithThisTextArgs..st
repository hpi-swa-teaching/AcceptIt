steps - createAUserStory
(when) I create a user story with this text
	ACCreatingAUserStoryLibrary createdUserstory: 
		(ACUserStory createUserStory: ACCreatingAUserStoryLibrary userstoryText 
			withCategory: ACCreatingAUserStoryLibrary category)

	