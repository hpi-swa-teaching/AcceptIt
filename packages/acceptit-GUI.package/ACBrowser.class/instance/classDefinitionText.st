building
classDefinitionText
	"return the text to display for the definition of the currently selected class"
	^ super classDefinitionText
	"
	| theClass |
	^(theClass := self selectedClassOrMetaClass) 
		ifNil: [''] 
		ifNotNil: [self getSimpleUserStoryDefinitionOf: theClass]"