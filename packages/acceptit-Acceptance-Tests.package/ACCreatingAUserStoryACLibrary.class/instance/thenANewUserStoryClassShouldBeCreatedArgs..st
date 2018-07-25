steps - createAUserStory
(then) a new user story class should be created
	self assert: [(Smalltalk classNamed: (ACCreatingAUserStoryACLibrary userstoryTitleTrimed)) ~= nil].
	(Smalltalk classNamed: ACCreatingAUserStoryACLibrary userstoryTitleTrimed)removeFromSystemUnlogged.