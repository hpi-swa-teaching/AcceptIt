as yet unclassified
buildStoryInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #story;
		yourself.