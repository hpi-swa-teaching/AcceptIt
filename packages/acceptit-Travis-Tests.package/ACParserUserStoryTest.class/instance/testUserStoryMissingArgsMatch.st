tests-UserStory
testUserStoryMissingArgsMatch

	|userStoryMissingArgs|
	userStoryMissingArgs := 'A Title
		In order to
		As a
		I want'.
	self shouldnt: [self match: userStoryMissingArgs with: #userstory].
		