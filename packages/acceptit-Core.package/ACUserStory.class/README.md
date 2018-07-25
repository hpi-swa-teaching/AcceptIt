An ACUserStory is a UserStory class. I subclass from SUnits TestCase and can be executed like any normal Test class. But I also provide the functionality to add test cases called scenarios that look like this:
exampleScenario
Given I have an Apple
When I eat that Apple
Then the apple should be gone.

The definion of these steps should be in one of my libraries that you can define on the class side. To create your own UserStory check out ACCEPTIT createUserStory:  withCategory: 