tests-UserStory
testUserStoryInvalidSyntaxMatch

	|userStoryInvalidSyntax|
	userStoryInvalidSyntax := 'A Title
		In roder to achieve something
		Asa role
		I wnat ot do something.'.
	self shouldnt: [self match: userStoryInvalidSyntax with: #userstory].
	self flag: #extend. "topa: should look for position of invalid syntax"