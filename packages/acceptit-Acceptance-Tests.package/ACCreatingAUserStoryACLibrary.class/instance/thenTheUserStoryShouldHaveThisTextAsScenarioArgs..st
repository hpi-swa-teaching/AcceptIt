steps - AddScenarioToUserStories
(then) the user story should have this text as scenario
	self assert: [(ACCreatingAUserStoryACLibrary createdUserstory compiledMethodAt: #AddScenariosToUserStory) ~= nil].
	(Smalltalk classNamed: ACCreatingAUserStoryACLibrary userstoryTitleTrimed)removeFromSystemUnlogged.