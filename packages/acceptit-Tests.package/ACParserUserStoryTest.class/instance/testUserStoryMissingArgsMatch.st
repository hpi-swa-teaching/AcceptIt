tests-UserStory
testUserStoryMissingArgsMatch

	|userStoryMissingArgs|
	userStoryMissingArgs := 'A Title
		As a
		I want
		In order to'.
	self shouldnt: [self match: userStoryMissingArgs with: #userstory].
		