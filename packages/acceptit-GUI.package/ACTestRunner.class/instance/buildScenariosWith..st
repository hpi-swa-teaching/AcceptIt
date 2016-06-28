building
buildScenariosWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #scenarioList;
		menu: #scenarioMenu:;
		getIndex: #scenarioSelected;
		setIndex: #scenarioSelected:;
		getSelectionList: #scenarioAt:;
		setSelectionList: #scenarioAt:put:;
		yourself.