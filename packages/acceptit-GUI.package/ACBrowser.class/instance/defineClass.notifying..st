building
defineClass: defString notifying: aController
	|subStrings title story category|
	subStrings := defString subStrings: ''''.
	title := subStrings at: 2.
	story := subStrings at: 4.
	category := subStrings at: 6.
	
	ACUserStory 
		createUserStory: (String streamContents: [ :stream |
			stream
				nextPutAll: title; cr; 
				nextPutAll: story])
		withCategory: category.