tests-singleLine
testUserStoryMeansOptionalToWithAnMatch

|meansOptionalToWithAn|
	meansOptionalToWithAn :='I want an embedded sleeping hour.'.
	self should: [self match: meansOptionalToWithAn with: #means].