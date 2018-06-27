building
buildCreateButtonWith: aBuilder

	^ (aBuilder pluggableButtonSpec new)
		model: self;
		label: self createButtonLabel;
		action: #openCreateView;
		yourself.