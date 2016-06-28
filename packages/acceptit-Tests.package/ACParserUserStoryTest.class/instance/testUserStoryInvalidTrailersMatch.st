tests-UserStory
testUserStoryInvalidTrailersMatch

	|userStoryInvalidTrailers|
	userStoryInvalidTrailers := 'A Title
		In order to achieve something
		As a role
		I want to do something.
	
		This is cool
		'.
	self shouldnt: [self match: userStoryInvalidTrailers with: #userstory].
		