tests-UserStory
testUserStoryInvalidSyntaxMatch

	|userStoryInvalidSyntax|
	userStoryInvalidSyntax := 'A Title
		Asa role
		I wnat ot do somethin
		In roder to achieve something.'.
	self shouldnt: [self match: userStoryInvalidSyntax with: #userstory].
	self flag: #extend. "topa: should look for position of invalid syntax"