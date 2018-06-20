building
classDefinitionText
	"return the text to display for the definition of the currently selected class"
	^ String streamContents: [:stream | 
		stream
			nextPutAll: self selectedClass title;
			cr;
			cr;
			nextPutAll: self selectedClass userStoryString]