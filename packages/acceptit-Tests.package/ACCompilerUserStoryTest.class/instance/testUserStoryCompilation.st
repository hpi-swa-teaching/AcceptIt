testing
testUserStoryCompilation

	| direct indirect generated |
	direct := self directClassWithVariablesSet definition.
	self removeTestClass.
	indirect := (ACUserStory named: self klassName
		purpose: 'impress the ladies' 
		role: 'Casanova'
		means: 'Prosecco'
		category: 'Generated') definition.
	self removeTestClass.
	Transcript show: indirect.
	Transcript show: self parseTree.
	generated := (Compiler evaluate: self parseTree notifying: nil logged: false) definition.
	self removeTestClass.
	Transcript show: generated.
	self 
		should: [direct = indirect];
		should: [indirect = generated].