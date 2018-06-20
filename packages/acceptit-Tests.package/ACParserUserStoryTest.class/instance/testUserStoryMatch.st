tests-UserStory
testUserStoryMatch

	|userStory|
	userStory := 'A Title
		As a role
		I want to do something
		In order to achieve something.'.
	self should: [self match: userStory with: #userstory].
		