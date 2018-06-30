as yet unclassified
buildWith: aBuilder
	| window |
	window := aBuilder pluggableWindowSpec new
		model: self; 
		label: self label;
		extent: self extent;
		children: (self windowChildrensBuildedWith: aBuilder);
		yourself.
	^ aBuilder build: window.