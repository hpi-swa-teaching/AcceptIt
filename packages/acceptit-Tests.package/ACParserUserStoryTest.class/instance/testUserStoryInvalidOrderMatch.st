tests-UserStory
testUserStoryInvalidOrderMatch

	|userStoryInvalidOrder|
	userStoryInvalidOrder := 'A Title
		I want to do something
		In order to achieve something.
		As a role'.
	self shouldnt: [self match: userStoryInvalidOrder with: #userstory].
		