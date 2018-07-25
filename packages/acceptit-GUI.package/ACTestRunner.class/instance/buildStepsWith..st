building
buildStepsWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		name: 'stepList';
		list: #stepList;
		menu: #stepMenu:;
		getIndex: #stepSelected;
		setIndex: #stepSelected:;
		yourself.