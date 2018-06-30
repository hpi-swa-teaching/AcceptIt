as yet unclassified
buildCreateButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: self buttonLabel;
		action: #buttonClick;
		yourself.