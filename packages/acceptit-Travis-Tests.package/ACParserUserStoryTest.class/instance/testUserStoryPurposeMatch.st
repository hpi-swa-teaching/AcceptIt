tests-singleLine
testUserStoryPurposeMatch

	|purpose|
	purpose := 'In order to achieve something'.
	self should: [  self match: purpose with: #purpose].