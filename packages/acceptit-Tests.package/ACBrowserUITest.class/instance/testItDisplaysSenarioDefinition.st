setUp and tearDown
testItDisplaysSenarioDefinition

	| codePaneText expectedText | 
	self selectCategory: ACUserStoryFactory categoryName.
	self selectUserStory: ACUserStoryFactory userStoryTitleTrimmed.
	self selectSenario: ACSenarioFactory senarioNameTrimmed.
	expectedText := String streamContents: [:stream | 
		stream
			nextPutAll: ACSenarioFactory senarioNameTrimmed;
			cr;
			cr;
			nextPutAll: ACSenarioFactory senarioContent].
	codePaneText := (self subject submorphs first submorphs first submorphs first) text asString.
	self assert: expectedText equals: codePaneText.
	