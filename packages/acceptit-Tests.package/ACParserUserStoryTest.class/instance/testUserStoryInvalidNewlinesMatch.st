tests-UserStory
testUserStoryInvalidNewlinesMatch

	|userStoryInvalidNewlines|
	userStoryInvalidNewlines := 'A Title
		As a role
		
		I want to do something.
		
		In order to achieve something.'.
	self shouldnt: [self match: userStoryInvalidNewlines with: #userstory].
		