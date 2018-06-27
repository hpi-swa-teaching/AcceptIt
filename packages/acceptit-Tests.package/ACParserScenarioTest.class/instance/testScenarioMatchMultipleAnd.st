tests-Scenario
testScenarioMatchMultipleAnd
	
	|scenario|
	scenario := 
'Hello World

Given I have a web site
And I am not logged in
And something
When I go to the web site
And I click ''Login''
And something more
Then I see ''Hello''
And I see ''World''
And I am definitely not out of ideas'.
	self should: [self match: scenario with: #fullScenario].
