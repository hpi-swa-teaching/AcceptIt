building
windowChildrensBuildedWith: aBuilder

	^ OrderedCollection new 
		add: ((self buildSystemCategoryListWith: aBuilder)
			name: 'categoryList';
			frame: self categoryListFrame;
			yourself);
		add: ((self buildClassListWith: aBuilder)
			name: 'userStoryList';
			frame: self classListFrame;
			yourself);
		add: ((self buildCodePaneWith: aBuilder)
			name: 'codePane';
			frame: self codePaneFrame;
			yourself);
		yourself.