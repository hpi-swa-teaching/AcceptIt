accessing
userStoryString

	^ String streamContents: [ :stream |
		stream 
			nextPutAll: 'As a ', self role; crtab;
			nextPutAll: 'I want ', self means; crtab;
			nextPutAll: 'In order to ', self purpose.]