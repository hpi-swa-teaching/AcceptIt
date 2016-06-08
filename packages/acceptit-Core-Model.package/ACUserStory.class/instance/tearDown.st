running
tearDown


	(self stepLibraries)
		do: [:library | (library respondsTo: #tearDownScenario:) ifTrue: [library tearDownScenario: self selector]];
		do: [:library | (library respondsTo: #tearDownUserStory:) ifTrue: [library tearDownUserStory: self class name]];
		do: [:library | (library respondsTo: #tearDown) ifTrue: [library tearDown]].
	self class tearDownUserStory.
	super tearDown.