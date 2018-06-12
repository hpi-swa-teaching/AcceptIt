building
getSimpleUserStoryDefinitionOf: anACUserStory
	^ String streamContents: [:stream |
		stream
			nextPutAll: anACUserStory title; cr; cr;
			nextPutAll: anACUserStory userStoryString]