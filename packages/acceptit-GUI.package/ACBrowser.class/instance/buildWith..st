building
buildWith: aBuilder
	| window |
	window := aBuilder pluggableWindowSpec new
		model: self; 
		label: self label;
		extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildSystemCategoryListWith: aBuilder)
				frame: self categoryListFrame;
				yourself);
			add: ((self buildClassListWith: aBuilder)
				frame: self classListFrame;
				yourself);
			add: ((self buildCodePaneWith: aBuilder)
				frame: self codePaneFrame;
				yourself);
		yourself);
		yourself.
	^ aBuilder build: window.