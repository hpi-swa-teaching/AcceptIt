tests
testFindCategories

	self assert: true equals: (self browser findCategories includes: ACUserStoryFactory categoryName).