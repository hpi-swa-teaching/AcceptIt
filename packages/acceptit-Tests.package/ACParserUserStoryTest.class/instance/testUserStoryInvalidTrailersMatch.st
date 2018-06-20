tests-UserStory
testUserStoryInvalidTrailersMatch

	|userStoryInvalidTrailers|
	userStoryInvalidTrailers := 'A Title
		As a role
		I want to do something
		In order to achieve something.
	
		This is cool
		'.
	self shouldnt: [self match: userStoryInvalidTrailers with: #userstory].
		