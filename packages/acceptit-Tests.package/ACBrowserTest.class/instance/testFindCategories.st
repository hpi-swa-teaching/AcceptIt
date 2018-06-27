as yet unclassified
testFindCategories

	| browser |
	ACUserStory createUserStory: ACUserStoryFactory userStoryString withCategory: ACUserStoryFactory categoryName.
	self assert: true equals: (browser findCategories includes: ACUserStoryFactory categoryName).