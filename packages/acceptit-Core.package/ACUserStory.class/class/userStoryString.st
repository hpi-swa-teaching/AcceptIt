accessing
userStoryString

	^ String streamContents: [ :stream |
		stream 
			nextPutAll: 'In order to ', self purpose; crtab;
			nextPutAll: 'As a ', self role; crtab;
			nextPutAll: 'I want ', self means.]