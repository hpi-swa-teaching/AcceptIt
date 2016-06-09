as yet unclassified
testWithIAndShouldAsSelector
	
	| userStory testString expectedSymbol |
	userStory := ('AC My Test Class
		In order to deal with UserStories
		As a developer
		I want generated classes from Userstories' as: ACUserStory) new.

	testString := 'I should have four cars in stock'.
	expectedSymbol := #givenShouldHaveFourCarsInStock.
	
	self assert: (userStory class selectorForString: testString prefixed: #given) = expectedSymbol.
	