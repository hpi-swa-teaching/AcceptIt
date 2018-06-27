as yet unclassified
buildCategoryInputWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #category;
		yourself.