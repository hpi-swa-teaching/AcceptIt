private
createConstant: constantName forUserStory: aUserStoryClass withValue: aString
		
	aUserStoryClass class 
		compile: (String streamContents: [:stream |
			stream 
				nextPutAll: constantName; crtab;
				nextPutAll: '<generated>';cr;crtab;
				nextPutAll: '^'; store: aString.])
		classified: 'constants'.