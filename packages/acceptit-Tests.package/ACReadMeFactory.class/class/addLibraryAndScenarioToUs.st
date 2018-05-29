-- all --
addLibraryAndScenarioToUs
	userStory class
		compile: 'libraries

  ^ {MySuperCalculatorTESTLibrary}'
		classified: 'library'.
	
	userStory
		compile: 'mvus

Given A is true
When I do nothing
Then I expect A to be trtrue'
		classified: 'scenario'.