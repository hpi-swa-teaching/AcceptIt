user story creation
initializationTemplateForClass: newClass named: aName story: aStory

	^ String streamContents: [:stream |
		stream 
			nextPutAll: 'initialize'; crtab;
			nextPutAll: '<generated>';cr;crtab;
			nextPutAll: 'super initialize.'; crtab;
			nextPutAll: 'self storyName: '; store: aName; nextPutAll: '.';crtab.
		#( role purpose means ) do: [:propertyName | 
			(newClass perform: propertyName) ifNotNil: [:property |
				stream 
					nextPutAll: 'self'; space; 
					nextPutAll: propertyName asMutator; space;
				 	store: property; nextPutAll: '.'; crtab]]]