accessing
classSelected: anInteger
	
	classIndex := anInteger.
	showUserStory := true.
	
	self changed: #classSelected; changed: #stepList. "; changed: #updateScenarios ."
	