tests-Scenario
testScenarioMatchAnd
	
	|scenario|
	scenario := 
'Hello World

Given I have a web site
And I am not logged in
When I go to the web site
And I click ''Login''
Then I see ''Hello''
And I see ''World'''.
	self should: [self match: scenario with: #fullScenario].
