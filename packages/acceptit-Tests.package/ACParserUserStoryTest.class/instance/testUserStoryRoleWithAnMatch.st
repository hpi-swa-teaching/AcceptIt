tests-singleLine
testUserStoryRoleWithAnMatch

	|roleWithAn|
	roleWithAn := 'As an emancipated role'.
	self should: [ self match: roleWithAn with: #role].