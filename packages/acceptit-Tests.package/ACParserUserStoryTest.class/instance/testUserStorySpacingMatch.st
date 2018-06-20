tests-UserStory
testUserStorySpacingMatch
	
	|userStorySpacing|
	userStorySpacing := 
	'A Title
		As a role
	 	 I want to do something
		  In order to achieve something.'.
	self should: [self match: userStorySpacing with: #userstory].
		