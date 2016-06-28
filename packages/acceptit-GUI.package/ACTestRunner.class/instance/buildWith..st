building
buildWith: aBuilder

	| window |
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildClassesWith: aBuilder)
				frame: (0.00 @ 0.00 corner: 0.25 @ 0.92 );
				yourself);
			add: ((self buildScenariosWith: aBuilder)
				frame: (0.25 @ 0.00 corner: 0.50 @ 0.92 );
				yourself);
			add: ((self buildStatusWith: aBuilder)
				frame: (0.50 @ 0.00 corner: 1.00 @ 0.08);
				yourself);
			add: ((self buildStepsWith: aBuilder)
				frame: (0.50 @ 0.08 corner: 1.00 @ 0.50);
				yourself);
			add: ((self buildFailureListWith: aBuilder)
				frame: (0.50 @ 0.50 corner: 1.00 @ 0.71);
				yourself);
			add: ((self buildErrorListWith: aBuilder)
				frame: (0.50 @ 0.71 corner: 1.00 @ 0.92);
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: (0.00 @ 0.92 corner: 1.00 @ 1.00);
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window.