tests-UserStory
testUserStoryNewlineAfterTitleMatch
	
	|userStoryNewlineAfterTitle|
	userStoryNewlineAfterTitle := 'A Title

		As a role
		I want to do something
		In order to achieve something.'.
	self should: [self match:  userStoryNewlineAfterTitle with: #userstory].
		