tests
testItDisplaysSenarioDefinition

	| codePaneText expectedText | 
	self selectCategory: ACUserStoryFactory categoryName.
	self selectUserStory: ACUserStoryFactory userStoryTitleTrimmed.
	self selectSenario: ACScenarioFactory senarioNameTrimmed.
	expectedText := String streamContents: [:stream | 
		stream
			nextPutAll: ACScenarioFactory senarioNameTrimmed;
			cr;
			cr;
			nextPutAll: ACScenarioFactory senarioContent].
	codePaneText := (self subject submorphs first submorphs first submorphs first) text asString.
	self assert: expectedText equals: codePaneText.
	