tests-UserStory
testUserStoryInvalidOrderMatch

	|userStoryInvalidOrder|
	userStoryInvalidOrder := 'A Title
		As a role
		I want to do something
		In order to achieve something.'.
	self shouldnt: [self match: userStoryInvalidOrder with: #userstory].
		