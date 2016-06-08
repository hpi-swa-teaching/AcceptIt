testing
testVerticalPrototype
	<timeout: 10>
	| userStory scenario numOfMethods storedMethod |

	userStory := 'AC My Test Class
		In order to deal with UserStories
		As a developer
		I want generated classes from Userstories' as: ACUserStory.
	self 
		should: [userStory inheritsFrom: TestCase];
		should: [userStory name = self klassName].
	
	numOfMethods := userStory methodDict size.
	scenario := userStory compile: 
'Hello World Test
Given I have a web site
When I go to the web site
Then I see "Hello World"'
						 classified: nil.
	self 
		should: [userStory methodDict size = (numOfMethods +1)];
		should: [userStory methodDict includesKey: scenario].
	
	" Configuration "
	userStory class compile: 'libraries ^ {ACVerticalPrototypeLibrary . ACAlbatrossLibrary}'.
	userStory class compile: 'buildConfiguration: aDictionary

	aDictionary 
		at: #albatrossSubjectApplication
			put: (WADispatcher default entryPointAt: ''ACTest'');
		at: #albatrossPort
			put: 9999.'.
	
	"ACTestRootComponent is hard coded in ACVerticalPrototypeTest"
	"generate empty renderContentOn:"
	storedMethod := ACTestRootComponent methodDict at: #renderContentOn: ifAbsent: [self error].
	[ACTestRootComponent methodDict removeKey: #renderContentOn:.
	self should: [(userStory run: scenario) hasFailures].
	] ensure: [ACTestRootComponent methodDict at: #renderContentOn: put: storedMethod].
	
	self should: [(userStory run: scenario)  hasPassed].