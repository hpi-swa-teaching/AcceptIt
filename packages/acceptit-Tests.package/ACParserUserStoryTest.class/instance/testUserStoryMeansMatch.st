tests-singleLine
testUserStoryMeansMatch

	|means|
	means := 'I want to do something'.
	self should: [self match: means with: #means].	