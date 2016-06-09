tests-UserStory
testUserStoryMatch

	|userStory|
	userStory := 'A Title
		In order to achieve something
		As a role
		I want to do something.'.
	self should: [self match: userStory with: #userstory].
		