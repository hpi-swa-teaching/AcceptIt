as yet unclassified
windowChildrensBuildedWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildStoryInputWith: aBuilder)
			name: 'storyInput';
			frame: self storyInputFrame;
			yourself);
		add: ((self buildCategoryInputWith: aBuilder)
			name: 'categoryInput';
			frame: self categoryInputFrame;
			yourself);
		add: ((self buildCreateButtonWith: aBuilder)
			name: 'createButton';
			frame: self createButtonFrame;
			yourself);
		yourself.