building
buildStepsWith: aBuilder

	^ aBuilder pluggableACListSpec new
		model: self;
		list: #stepList;
		menu: #stepMenu:;
		getIndex: #stepSelected;
		setIndex: #stepSelected:;
		getListItemColor: #stepColorAt:;
		doubleClick: #browseToStepImplementation
		yourself.