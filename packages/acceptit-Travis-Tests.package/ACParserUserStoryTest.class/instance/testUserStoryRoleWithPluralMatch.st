tests-singleLine
testUserStoryRoleWithPluralMatch
	
	|roleWithPlural|
	roleWithPlural:='As roles'.
	self shouldnt: [ self match: roleWithPlural with: #role].