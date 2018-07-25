steps - createAUserStory
(then) a new user story class should be created
	self assert: [(Smalltalk classNamed: (ACCreatingAUserStoryLibrary userstoryTitleTrimed)) ~= nil].
	(Smalltalk classNamed: ACCreatingAUserStoryLibrary userstoryTitleTrimed)removeFromSystemUnlogged.