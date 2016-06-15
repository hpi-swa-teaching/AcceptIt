tests-UserStory
testUserStorySpacingMatch
	
	|userStorySpacing|
	userStorySpacing := 
	'A Title
	    In order to achieve something
		As a role
	 	 I want to do something.'.
	self should: [self match: userStorySpacing with: #userstory].
		