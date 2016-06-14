tests-singleLine
testUserStoryMeansOptionalToMatch

	|meansOptionalTo|
	meansOptionalTo := 'I want a cake.'.
	self should: [  self match: meansOptionalTo with: #means].