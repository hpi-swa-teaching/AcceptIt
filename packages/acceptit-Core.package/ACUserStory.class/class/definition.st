behavior-fileIn/Out
definition
	^ self == ACUserStory
		ifTrue: [super definition]
		ifFalse: [String streamContents: [:stream | |superklass|
			superklass := (super definition findTokens: ' ') first.
			stream
				nextPutAll: superklass; space;
				nextPutAll: 'named:'; space; store: self title; crtab;
				nextPutAll: 'story:'; cr; store: self userStoryString;  crtab;
				nextPutAll: 'category:'; space; store: self category asString]]
