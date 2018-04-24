tests-UserStory
testUserStoryInvalidNewlinesMatch

	|userStoryInvalidNewlines|
	userStoryInvalidNewlines := 'A Title
		In order to achieve something
		
		As a role
		
		I want to do something.'.
	self shouldnt: [self match: userStoryInvalidNewlines with: #userstory].
		