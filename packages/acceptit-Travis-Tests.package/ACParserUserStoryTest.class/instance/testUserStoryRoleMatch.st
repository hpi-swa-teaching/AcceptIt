tests-singleLine
testUserStoryRoleMatch

	|role|
	role :=  'As a role'.
	self should: [ self match: role with: #role].