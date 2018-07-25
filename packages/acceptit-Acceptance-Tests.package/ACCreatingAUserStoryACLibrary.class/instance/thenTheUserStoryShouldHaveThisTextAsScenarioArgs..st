steps - AddScenarioToUserStories
(then) the user story should have this text as scenario
	self assert: [(ACCreatingAUserStoryLibrary createdUserstory compiledMethodAt: #AddScenariosToUserStory) ~= nil].
	(Smalltalk classNamed: ACCreatingAUserStoryLibrary userstoryTitleTrimed)removeFromSystemUnlogged.