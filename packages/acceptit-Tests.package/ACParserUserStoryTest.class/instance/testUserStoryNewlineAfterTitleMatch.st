tests-UserStory
testUserStoryNewlineAfterTitleMatch
	
	|userStoryNewlineAfterTitle|
	userStoryNewlineAfterTitle := 'A Title

		In order to achieve something
		As a role
		I want to do something.'.
	self should: [self match:  userStoryNewlineAfterTitle with: #userstory].
		